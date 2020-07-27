from flask_restful import Resource
from flask import request
from app import app, db
from flask_jwt_extended import jwt_required
import uuid
from datetime import datetime
from app.middleware import siswa, admin


def getUser(uuid_user):
    sql = """select nama from bio_user where uuid_user = %s"""
    return db.get_one(sql, [uuid_user])


def getKelas(uuid_kelas):
    sql = """select kelas, label from kelas where uuid = %s"""
    res = db.get_one(sql, [uuid_kelas])
    res["kelas"] = str(res["kelas"]) + " " + res["label"]
    del res["label"]
    return res


def getMapel(uuid_mapel):
    sql = """select mapel from mapel where uuid = %s"""
    return db.get_one(sql, [uuid_mapel])


class TambahMateri(Resource):
    @jwt_required
    @admin()
    def post(self, uuid_user):
        now = datetime.now()
        data = request.get_json()
        user = getUser(uuid_user)
        sql = """insert into materi values(0,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"""
        params = [str(uuid.uuid4()), user["nama"], data["uuid_kelas"], data["uuid_mapel"],
                  data["materi"], data["isi"], data["link"], now, now, uuid_user]
        return db.commit_data(sql, params)


class DetailMateri(Resource):
    @jwt_required
    def get(self, id):
        sql = """select * from materi where uuid = %s"""
        return db.get_one(sql, [id])


class DaftarMateriSiswaKelas(Resource):
    # @jwt_required
    # @siswa()
    def get(self, uuid_kelas):
        kelas = getKelas(uuid_kelas)
        sql = """select distinct mapel, uuid_mapel from mapel join pengampu on mapel.uuid = pengampu.uuid_mapel join kelas on pengampu.uuid_kelas = kelas.uuid where pengampu.uuid_kelas = %s"""
        result = db.get_data(sql, [uuid_kelas])
        return {"kelas": kelas, "mapel": result}


class DaftarMateriSiswaMapel(Resource):
    def get(self, uuid_kelas, uuid_mapel):
        kelas = getKelas(uuid_kelas)
        mapel = getMapel(uuid_mapel)
        sql = """select materi, materi.uuid from materi join mapel on materi.uuid_mapel = mapel.uuid where uuid_mapel = %s"""
        res = db.get_data(sql, [uuid_mapel])
        return {"kelas": kelas, "mapel": mapel, "materi": res}


class DaftarMateri(Resource):
    # @jwt_required
    # @admin()
    def get(self, uuid_user):
        if uuid_user == "admin":
            sql = """select distinct kelas from kelas"""
            return db.get_data(sql)
        else:
            sql = """select kelas from kelas join pengampu on kelas.uuid = pengampu.uuid_kelas where pengampu.uuid_user = %s"""
            return db.get_data(sql, [uuid_user])


class DaftarMateriKelas(Resource):
    # @jwt_required
    # @admin()
    def get(self, uuid_user, kelas):
        if uuid_user == "admin":
            sql = """select label from kelas where kelas = %s"""
            return db.get_data(sql, [kelas])
        else:
            sql = """select label from kelas join pengampu on kelas.uuid = pengampu.uuid_kelas where pengampu.uuid_user = %s and kelas = %s"""
            return db.get_data(sql, [uuid_user, kelas])


class DaftarMateriKelasLabel(Resource):
    def get(self, uuid_user, kelas, label):
        if uuid_user == "admin":
            sql = """select distinct mapel from mapel join pengampu on mapel.uuid = pengampu.uuid_mapel join kelas on pengampu.uuid_kelas = kelas.uuid where kelas = %s and label = %s"""
            return db.get_data(sql, [kelas, label])
        else:
            sql = """select distinct mapel from mapel join pengampu on mapel.uuid = pengampu.uuid_mapel join kelas on pengampu.uuid_kelas = kelas.uuid where pengampu.uuid_user = %s and kelas = %s and label = %s"""
            return db.get_data(sql, [uuid_user, kelas, label])


class DaftarMateriMapel(Resource):
    # @jwt_required
    # @admin()
    def get(self, uuid_user, kelas, label, mapel):
        if uuid_user == "admin":
            sql = """select materi.uuid, materi from materi join kelas on materi.uuid_kelas = kelas.uuid join mapel on mapel.uuid = materi.uuid_mapel where kelas = %s and label = %s and mapel = %s"""
            return db.get_data(sql, [kelas, label, mapel])
        else:
            sql = """select materi.uuid, materi from materi join pengampu on materi.uuid_user = pengampu.uuid_user join kelas on materi.uuid_kelas = kelas.uuid join mapel on mapel.uuid = materi.uuid_mapel where materi.uuid_user = %s and kelas = %s and label = %s and mapel = %s"""
            return db.get_data(sql, [uuid_user, kelas, label, mapel])


class Materi(Resource):
    def get(self, uuid_kelas, uuid_mapel):
        sql = """select materi, uuid from materi where uuid_kelas = %s and uuid_mapel = %s"""
        res = db.get_data(sql, [uuid_kelas, uuid_mapel])
        for i in res:
            i["text"] = i["materi"]
            i["value"] = i["uuid"]
            del i["uuid"]
            del i["materi"]
        return res


class UpdateMateri(Resource):
    @jwt_required
    @admin()
    def put(self, id):
        now = datetime.now()
        data = request.get_json()
        sql = """update materi set uuid_kelas = %s, uuid_mapel = %s, materi = %s, isi = %s, link = %s, updated_at = %s where uuid = %s"""
        params = [data["uuid_kelas"], data["uuid_mapel"],
                  data["materi"], data["isi"], data["link"], now, id]
        db.commit_data(sql, params)


class DeleteMateri(Resource):
    def delete(self, id):
        sql = """delete from materi where uuid = %s"""
        db.commit_data(sql, [id])
