from flask_restful import Resource
from flask import request
from flask_jwt_extended import jwt_required
from app import app, db
from datetime import datetime
from passlib.hash import pbkdf2_sha256 as sha256
from app.middleware import admin, siswa
from random import shuffle
import uuid


def getUser(uuid_kelas, mapel):
    sql = """select uuid_user from pengampu where uuid_kelas = %s and bidang_studi = %s"""
    return db.get_one(sql, [uuid_kelas, mapel])


def cekJawaban(uuid_kelas, mapel, materi, uuid_soal, jawaban):
    sql = """select kunci_jawaban, skor from soal where uuid_kelas = %s and mapel = %s and materi = %s and uuid = %s"""
    hasil = db.get_one(sql, [uuid_kelas, mapel, materi, uuid_soal])

    if hasil["kunci_jawaban"] == jawaban:
        return {"jawaban": True, "skor": hasil["skor"]}
    else:
        return {"jawaban": False}


def postSoal(uuid, uuid_kelas, mapel, materi, soal, kunci, skor, tampil, now, uuid_user):
    sql = """insert into soal values(0,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"""
    params = [uuid, uuid_kelas, mapel, materi, soal,
              kunci, skor, tampil, now, now, uuid_user]
    db.commit_data(sql, params)


def postMC(uuid_soal, opsi):
    uuid_mc = str(uuid.uuid4())
    sql = """insert into mc_soal values(0,%s,%s,%s)"""
    params = [uuid_mc, uuid_soal, opsi]
    db.commit_data(sql, params)


def updateSoal(uuid_soal, soal, kunci, now):
    sql = """update soal set soal = %s, kunci_jawaban = %s, updated_at = %s where uuid = %s"""
    db.commit_data(sql, [soal, kunci, now, uuid_soal])


def updateMC(uuid_mc, opsi):
    sql = """update mc_soal set opsi = %s where uuid = %s"""
    db.commit_data(sql, [opsi, uuid_mc])


class SoalAdmin(Resource):
    @jwt_required
    @admin()
    def get(self, uuid_user):
        if uuid_user == "admin":
            sql = """select distinct soal.uuid_kelas, mapel.mapel, mapel.materi, mapel.jumlah_soal from soal, (select distinct soal.mapel, materi.materi, materi.jumlah_soal from soal, (select distinct soal.materi, count(*) as jumlah_soal from soal group by soal.materi) materi where soal.materi = materi.materi) mapel where soal.materi = mapel.materi"""
            return db.get_data(sql)
        else:
            sql = """select distinct soal.uuid_kelas, mapel.mapel, mapel.materi, mapel.jumlah_soal from soal, (select distinct soal.mapel, materi.materi, materi.jumlah_soal from soal, (select distinct soal.materi, count(*) as jumlah_soal from soal group by soal.materi) materi where soal.materi = materi.materi) mapel where soal.materi = mapel.materi and soal.uuid_user = %s"""
            return db.get_data(sql, [uuid_user])


class SoalSiswa(Resource):
    @jwt_required
    @siswa()
    def get(self, uuid_kelas):
        sql = """select distinct mapel.mapel, mapel.materi, mapel.jumlah_soal from soal, (select distinct soal.mapel, materi.materi, materi.jumlah_soal from soal, (select distinct soal.materi, count(*) as jumlah_soal from soal where tampil = true group by soal.materi) materi where soal.materi = materi.materi) mapel where soal.materi = mapel.materi and soal.uuid_kelas = %s"""
        return db.get_data(sql, [uuid_kelas])


class CekSoal(Resource):
    @jwt_required
    @admin()
    def get(self, uuid_kelas, mapel, materi):
        sql = """select soal.uuid, soal.kunci_jawaban, soal.skor, soal.tampil, opsi.soal, opsi.pilihan, opsi.uuid_pilihan from soal, (select soal, group_concat(opsi) as pilihan, group_concat(mc_soal.uuid) as uuid_pilihan from soal join mc_soal on soal.uuid = mc_soal.uuid_soal where soal.uuid_kelas = %s and soal.mapel = %s and soal.materi = %s group by soal.soal) opsi where soal.soal = opsi.soal"""
        hasil = db.get_data(sql, [uuid_kelas, mapel, materi])
        for i in hasil:
            opsi = []
            for j in i["pilihan"].split(","):
                pilihan = {}
                pilihan["nilai"] = j
                pilihan["uuid_opsi"] = i["uuid_pilihan"].split(
                    ",")[i["pilihan"].split(",").index(j)]
                opsi.append(pilihan)
            del hasil[hasil.index(i)]["pilihan"]
            del hasil[hasil.index(i)]["uuid_pilihan"]
            hasil[hasil.index(i)]["opsi"] = opsi
        return hasil

    @jwt_required
    @admin()
    def put(self, uuid_kelas, mapel, materi):
        now = datetime.now()
        data = request.get_json()
        for i in data:
            updateSoal(i["uuid"], i["soal"], i["opsi"][0]["nilai"], now)
            for j in i["opsi"]:
                updateMC(j["uuid_opsi"], j["nilai"])


class TambahSoal(Resource):
    @jwt_required
    @admin()
    def post(self, uuid_user):
        now = datetime.now()
        data = request.get_json()
        for i in data:
            uuid_soal = str(uuid.uuid4())
            uuid_mc = str(uuid.uuid4())
            postSoal(uuid_soal, i["uuid_kelas"], i["mapel"],
                     i["materi"], i["soal"], i["opsi"][0], i["skor"], i["tampil"], now, uuid_user)
            for j in i["opsi"]:
                postMC(uuid_soal, j)


class Jawab(Resource):
    @jwt_required
    @siswa()
    def get(self, uuid_kelas, mapel, materi):
        sql = """select soal.uuid from soal where uuid_kelas = %s and mapel = %s and materi = %s and tampil = 1"""
        hasil = db.get_data(sql, [uuid_kelas, mapel, materi])
        shuffle(hasil)
        return hasil

    @jwt_required
    @siswa()
    def post(self, uuid_kelas, mapel, materi):
        now = datetime.now()
        data = request.get_json()
        skor = 0
        user = getUser(kelas, mapel)
        for i in data["hasil"]:
            jawaban = cekJawaban(uuid_kelas, mapel, materi, i["uuid"], i["jawaban"])
            if jawaban["jawaban"]:
                skor += jawaban["skor"]
        sql = """insert into skor values(0,%s,%s,%s,%s,%s,%s,%s,%s)"""
        params = [str(uuid.uuid4()), data["uuid_siswa"], uuid_kelas,
                  mapel, materi, user["uuid_user"], skor, now]
        db.commit_data(sql, params)


class SoalJawab(Resource):
    @jwt_required
    @siswa()
    def get(self, id):
        sql = """select soal,group_concat(opsi) as pilihan from soal join mc_soal on soal.uuid = mc_soal.uuid_soal where soal.uuid = %s group by soal"""
        hasil = db.get_one(sql, [id])
        hasil["pilihan"] = hasil["pilihan"].split(",")
        for i in range(len(hasil["pilihan"])):
            hasil["pilihan"][i] = {
                "text": hasil["pilihan"][i], "value": hasil["pilihan"][i]}
        shuffle(hasil["pilihan"])
        return hasil


class CekSiswa(Resource):
    def get(self, uuid_kelas, mapel, materi):
        sql = """select uuid_siswa from skor where uuid_kelas = %s and mapel = %s and materi = %s"""
        return db.get_one(sql, [kelas, mapel, materi])


class DaftarSkor(Resource):
    @jwt_required
    def get(self, uuid_user):
        if uuid_user == "admin":
            sql = """select distinct uuid_kelas, mapel, materi.materi, materi.siswa from skor,(select materi, count(*) as siswa from bio_siswa join siswa on bio_siswa.uuid_siswa = siswa.uuid join skor on siswa.uuid = skor.uuid_siswa group by materi) as materi where skor.materi = materi.materi"""
            return db.get_data(sql)
        else:
            sql = """select distinct uuid_kelas, mapel, materi.materi, materi.siswa from skor,(select materi, count(*) as siswa from bio_siswa join siswa on bio_siswa.uuid_siswa = siswa.uuid join skor on siswa.uuid = skor.uuid_siswa group by materi) as materi where skor.materi = materi.materi and uuid_user = %s"""
            return db.get_data(sql, [uuid_user])


class Skor(Resource):
    @jwt_required
    def get(self, uuid_user, materi):
        if uuid_user == "admin":
            sql = """select nama, skor from bio_siswa join siswa on bio_siswa.uuid_siswa = siswa.uuid join skor on siswa.uuid = skor.uuid_siswa where materi = %s"""
            return db.get_data(sql,[materi])
        else:
            sql = """select nama, skor from bio_siswa join siswa on bio_siswa.uuid_siswa = siswa.uuid join skor on siswa.uuid = skor.uuid_siswa where skor.uuid_user = %s and materi = %s"""
            return db.get_data(sql, [uuid_user, materi])


class DeleteSoal(Resource):
    def delete(self, id):
        sql = """delete from soal where uuid = %s"""
        db.commit_data(sql, [id])
