from flask_restful import Resource
from flask import request
from flask_jwt_extended import jwt_required
from app import app, db
from datetime import datetime
from passlib.hash import pbkdf2_sha256 as sha256
from app.middleware import admin, siswa
from random import shuffle
import uuid


def getUser(uuid_materi):
    sql = """select materi.uuid_user, materi.uuid_kelas, materi.uuid_mapel from pengampu join materi on materi.uuid_mapel = pengampu.uuid_mapel join kelas on kelas.uuid = materi.uuid_kelas where materi.uuid = %s"""
    return db.get_one(sql, [uuid_materi])


def getKelas(uuid_kelas):
    sql = """select kelas, label from kelas where uuid = %s"""
    res = db.get_one(sql, [uuid_kelas])
    res["kelas"] = str(res["kelas"]) + " " + res["label"]
    del res["label"]
    return res


def getMapel(uuid_mapel):
    sql = """select mapel from mapel where uuid = %s"""
    return db.get_one(sql, [uuid_mapel])


def getKelasMapelMateri(uuid_materi):
    sql = """select kelas, label, mapel, materi from soal join kelas on soal.uuid_kelas = kelas.uuid join mapel on soal.uuid_mapel = mapel.uuid join materi on soal.uuid_materi = materi.uuid where soal.uuid_materi = %s"""
    res = db.get_one(sql, [uuid_materi])
    res["kelas"] = str(res["kelas"]) + " " + res["label"]
    del res["label"]
    return res


def cekJawaban(uuid_materi, uuid_soal, jawaban):
    sql = """select kunci_jawaban, skor from soal where uuid_materi = %s and uuid = %s"""
    hasil = db.get_one(sql, [uuid_materi, uuid_soal])

    if hasil["kunci_jawaban"] == jawaban:
        return {"jawaban": True, "skor": hasil["skor"]}
    else:
        return {"jawaban": False}


def postSoal(uuid, uuid_kelas, uuid_mapel, materi, soal, kunci, skor, now, uuid_user):
    sql = """insert into soal values(0,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"""
    params = [uuid, uuid_kelas, uuid_mapel, materi, soal,
              kunci, skor, False, now, now, uuid_user]
    db.commit_data(sql, params)


def postMC(uuid_soal, opsi):
    sql = """insert into mc_soal values(0,%s,%s)"""
    params = [uuid_soal, opsi]
    db.commit_data(sql, params)


def updateSoal(uuid_soal, soal, kunci, now):
    sql = """update soal set soal = %s, kunci_jawaban = %s, updated_at = %s where uuid = %s"""
    db.commit_data(sql, [soal, kunci, now, uuid_soal])


def updateMC(uuid_soal, opsi):
    db.commit_data("""delete from mc_soal where uuid_soal = %s""", [uuid_soal])
    sql = """insert into mc_soal values(0,%s,%s)"""
    db.commit_data(sql, [opsi, uuid_mc])


class DaftarSoal(Resource):
    @jwt_required
    @admin()
    def get(self, uuid_user):
        if uuid_user == "admin":
            sql = """select distinct kelas from kelas"""
            return db.get_data(sql)
        else:
            sql = """select distinct kelas from kelas join pengampu on kelas.uuid = pengampu.uuid_kelas where pengampu.uuid_user = %s"""
            return db.get_data(sql, [uuid_user])


class DaftarSoalKelas(Resource):
    @jwt_required
    @admin()
    def get(self, uuid_user, kelas):
        if uuid_user == "admin":
            sql = """select distinct label from kelas where kelas = %s"""
            return db.get_data(sql, [kelas])
        else:
            sql = """select distinct label from kelas join pengampu on kelas.uuid = pengampu.uuid_kelas where pengampu.uuid_user = %s and kelas = %s"""
            return db.get_data(sql, [uuid_user, kelas])


class DaftarSoalKelasLabel(Resource):
    @jwt_required
    @admin()
    def get(self, uuid_user, kelas, label):
        if uuid_user == "admin":
            sql = """select distinct mapel from soal join kelas on soal.uuid_kelas = kelas.uuid join mapel on mapel.uuid = soal.uuid_mapel where kelas = %s and label = %s"""
            return db.get_data(sql, [kelas, label])
        else:
            sql = """select distinct mapel from soal join pengampu on soal.uuid_user = pengampu.uuid_user join kelas on soal.uuid_kelas = kelas.uuid join mapel on mapel.uuid = soal.uuid_mapel where soal.uuid_user = %s and kelas = %s and label = %s"""
            return db.get_data(sql, [uuid_user, kelas, label])


class DaftarSoalMapel(Resource):
    @jwt_required
    @admin()
    def get(self, uuid_user, kelas, label, mapel):
        if uuid_user == "admin":
            sql = """select distinct materi.uuid, materi from materi join kelas on materi.uuid_kelas = kelas.uuid join mapel on mapel.uuid = materi.uuid_mapel where kelas = %s and label = %s and mapel = %s"""
            return db.get_data(sql, [kelas, label, mapel])
        else:
            sql = """select distinct materi.uuid, materi from materi join pengampu on materi.uuid_user = pengampu.uuid_user join kelas on materi.uuid_kelas = kelas.uuid join mapel on mapel.uuid = materi.uuid_mapel where materi.uuid_user = %s and kelas = %s and label = %s and mapel = %s"""
            return db.get_data(sql, [uuid_user, kelas, label, mapel])


class DaftarSoalSiswaKelas(Resource):
    @jwt_required
    @siswa()
    def get(self, uuid_kelas):
        kelas = getKelas(uuid_kelas)
        sql = """select distinct mapel, uuid_mapel from soal join mapel on mapel.uuid = soal.uuid_mapel join siswa on soal.uuid_kelas = siswa.uuid_kelas where siswa.uuid_kelas = %s"""
        res = db.get_data(sql, [uuid_kelas])
        return {"kelas": kelas, "mapel": res}


class DaftarSoalSiswaMapel(Resource):
    @jwt_required
    @siswa()
    def get(self, uuid_kelas, uuid_mapel):
        kelas = getKelas(uuid_kelas)
        mapel = getMapel(uuid_mapel)
        sql = """select distinct materi, materi.uuid from soal join materi on materi.uuid = soal.uuid_materi where soal.uuid_mapel = %s and tampil = 1"""
        res = db.get_data(sql, [uuid_mapel])
        return {"kelas": kelas, "mapel": mapel, "materi": res}


class Tampil(Resource):
    @jwt_required
    @admin()
    def get(self, uuid_materi):
        sql = """select tampil from soal where uuid_materi = %s"""
        res = db.get_one(sql, [uuid_materi])
        if res["tampil"] == 1:
            res["tampil"] = True
        else:
            res["tampil"] = False
        return res

    @jwt_required
    @admin()
    def put(self, uuid_materi):
        data = request.get_json()
        sql = """update soal set tampil = %s where uuid_materi = %s"""
        db.commit_data(sql, [data["tampil"], uuid_materi])


class JumlahSoal(Resource):
    @jwt_required
    def get(self, uuid_materi):
        sql = """select count(*) as jml_soal from soal where uuid_materi = %s group by uuid_materi"""
        return db.get_one(sql, [uuid_materi])


class CekSoal(Resource):
    @jwt_required
    @admin()
    def get(self, uuid_materi):
        kop = getKelasMapelMateri(uuid_materi)
        sql = """select soal.uuid, soal.kunci_jawaban, soal.skor, opsi.soal, opsi.pilihan from soal, (select soal, group_concat(opsi) as pilihan from soal join mc_soal on soal.uuid = mc_soal.uuid_soal where soal.uuid_materi = %s group by soal.soal) opsi where soal.soal = opsi.soal"""
        hasil = db.get_data(sql, [uuid_materi])
        for i in hasil:
            opsi = []
            for j in i["pilihan"].split(","):
                pilihan = {}
                pilihan["nilai"] = j
                opsi.append(pilihan)
            del hasil[hasil.index(i)]["pilihan"]
            hasil[hasil.index(i)]["opsi"] = opsi
        return {"kelas": kop["kelas"], "mapel": kop["mapel"], "materi": kop["materi"], "soal": hasil}

    @jwt_required
    @admin()
    def put(self, uuid_materi):
        now = datetime.now()
        data = request.get_json()
        for i in data:
            updateSoal(i["uuid"], i["soal"], i["opsi"][0]["nilai"], now)
            for j in i["opsi"]:
                updateMC(i["uuid"], j["nilai"])


class TambahSoal(Resource):
    @jwt_required
    @admin()
    def post(self, uuid_user):
        now = datetime.now()
        data = request.get_json()
        for i in data:
            uuid_soal = str(uuid.uuid4())
            postSoal(uuid_soal, i["uuid_kelas"], i["uuid_mapel"],
                     i["uuid_materi"], i["soal"], i["opsi"][0], i["skor"], now, uuid_user)
            for j in i["opsi"]:
                postMC(uuid_soal, j)


class Jawab(Resource):
    @jwt_required
    @siswa()
    def get(self, uuid_materi):
        kop = getKelasMapelMateri(uuid_materi)
        sql = """select soal.uuid from soal where uuid_materi = %s and tampil = 1"""
        hasil = db.get_data(sql, [uuid_materi])
        shuffle(hasil)
        return {"kelas": kop["kelas"], "mapel": kop["mapel"], "materi": kop["materi"], "soal": hasil}

    @jwt_required
    @siswa()
    def post(self, uuid_materi):
        now = datetime.now()
        data = request.get_json()
        skor = 0
        user = getUser(uuid_materi)
        print(user)
        for i in data["hasil"]:
            jawaban = cekJawaban(uuid_materi, i["uuid"], i["jawaban"])
            if jawaban["jawaban"]:
                skor += jawaban["skor"]
        sql = """insert into skor values(0,%s,%s,%s,%s,%s,%s,%s,%s)"""
        params = [str(uuid.uuid4()), data["uuid_siswa"], user["uuid_kelas"],
                  user["uuid_mapel"], uuid_materi, user["uuid_user"], skor, now]
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
    @jwt_required
    @siswa()
    def get(self, uuid_materi, uuid_siswa):
        sql = """select uuid from skor where uuid_materi = %s and uuid_siswa = %s"""
        return db.get_data(sql, [uuid_materi, uuid_siswa])


class DeleteSoal(Resource):
    @jwt_required
    @admin()
    def delete(self, id):
        sql = """delete from soal where uuid = %s"""
        db.commit_data(sql, [id])
