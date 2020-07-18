from flask_restful import Resource
from flask import request
from flask_jwt_extended import jwt_required
from app import app, db
from datetime import datetime
from passlib.hash import pbkdf2_sha256 as sha256
from app.middleware import admin, siswa
from random import shuffle
import uuid


def cekJawaban(kelas, mapel, materi, uuid_soal, jawaban):
    sql = """select kunci_jawaban from soal where kelas = %s and mapel = %s and materi = %s and uuid = %s"""
    hasil = db.get_one(sql, [kelas, mapel, materi, uuid_soal])

    if hasil["kunci_jawaban"] == jawaban:
        return True
    else:
        return False

def cekSiswa(kelas,mapel,materi,uuid_siswa):
    sql = """select * from skor where kelas = %s and mapel = %s and materi = %s and uuid_siswa = %s"""
    return db.get_one(sql,[kelas,mapel,materi,uuid_siswa])

def postSoal(uuid, kelas, mapel, materi, soal, kunci, now):
    sql = """insert into soal values(0,%s,%s,%s,%s,%s,%s,%s,%s)"""
    params = [uuid, kelas, mapel, materi, soal, kunci, now, now]
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
    def get(self):
        sql = """select distinct soal.kelas, mapel.mapel, mapel.materi, mapel.jumlah_soal from soal, (select distinct soal.mapel, materi.materi, materi.jumlah_soal from soal, (select distinct soal.materi, count(*) as jumlah_soal from soal group by soal.materi) materi where soal.materi = materi.materi) mapel where soal.materi = mapel.materi"""
        return db.get_data(sql)


class SoalSiswa(Resource):
    @jwt_required
    @siswa()
    def get(self, kelas):
        sql = """select distinct mapel.mapel, mapel.materi, mapel.jumlah_soal from soal, (select distinct soal.mapel, materi.materi, materi.jumlah_soal from soal, (select distinct soal.materi, count(*) as jumlah_soal from soal group by soal.materi) materi where soal.materi = materi.materi) mapel where soal.materi = mapel.materi and soal.kelas = %s"""
        return db.get_data(sql, [kelas])


class CekSoal(Resource):
    @jwt_required
    @admin()
    def get(self, kelas, mapel, materi):
        sql = """select soal.uuid, soal.kunci_jawaban, opsi.soal, opsi.pilihan, opsi.uuid_pilihan from soal, (select soal, group_concat(opsi) as pilihan, group_concat(mc_soal.uuid) as uuid_pilihan from soal join mc_soal on soal.uuid = mc_soal.uuid_soal where soal.kelas = %s and soal.mapel = %s and soal.materi = %s group by soal.soal) opsi where soal.soal = opsi.soal"""
        hasil = db.get_data(sql, [kelas, mapel, materi])
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
    def put(self, kelas, mapel, materi):
        now = datetime.now()
        data = request.get_json()
        for i in data:
            updateSoal(i["uuid"], i["soal"], i["opsi"][0]["nilai"], now)
            for j in i["opsi"]:
                updateMC(j["uuid_opsi"], j["nilai"])


class TambahSoal(Resource):
    @jwt_required
    @admin()
    def post(self):
        now = datetime.now()
        data = request.get_json()
        for i in data:
            uuid_soal = str(uuid.uuid4())
            uuid_mc = str(uuid.uuid4())
            postSoal(uuid_soal, i["kelas"], i["mapel"],
                     i["materi"], i["soal"], i["opsi"][0], now)
            for j in i["opsi"]:
                postMC(uuid_soal, j)


class Jawab(Resource):
    @jwt_required
    @siswa()
    def get(self, kelas, mapel, materi):
        sql = """select soal.uuid from soal where kelas = %s and mapel = %s and materi = %s"""
        hasil = db.get_data(sql, [kelas, mapel, materi])
        # for i in hasil:
        #    i["pilihan"] = i["pilihan"].split(",")
        #    shuffle(i["pilihan"])
        shuffle(hasil)
        return hasil

    @jwt_required
    @siswa()
    def post(self, kelas, mapel, materi):
        now = datetime.now()
        data = request.get_json()
        # print(data)
        skor = 0
        if cekSiswa(kelas,mapel,materi,data["uuid_siswa"]) == None:
            for i in data["hasil"]:
                if cekJawaban(kelas, mapel, materi, i["uuid"], i["jawaban"]):
                    skor += 1
            sql = """insert into skor values(0,%s,%s,%s,%s,%s,%s,%s)"""
            params = [str(uuid.uuid4()), data["uuid_siswa"],
                    kelas, mapel, materi, skor, now]
            db.commit_data(sql, params)
        else:
            return {"msg": "Anda sudah menjawab soal ini"}

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

class Skor(Resource):
    def get(self):
        pass