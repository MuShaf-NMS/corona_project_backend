from flask_restful import Resource
from flask import request
from app import app, db
from flask_jwt_extended import jwt_required
import uuid
from datetime import datetime
from app.middleware import siswa, admin


class TambahMateri(Resource):
    @jwt_required
    @admin()
    def post(self):
        now = datetime.now()
        data = request.get_json()
        sql = """insert into materi values(0,%s,%s,%s,%s,%s,%s,%s,%s,%s)"""
        params = [str(uuid.uuid4()), data["guru"], data["kelas"], data["mapel"],
                  data["materi"], data["submateri"], data["isi"], now, now]
        return db.commit_data(sql, params)



class DetailMateri(Resource):
    @jwt_required
    def get(self, id):
        sql = """select * from materi where uuid = %s"""
        return db.get_one(sql, [id])


class DaftarMateriSiswa(Resource):
    @jwt_required
    @siswa()
    def get(self, kelas):
        sql = """select * from materi where kelas = %s"""
        result = db.get_data(sql,[kelas])
        return result

class DaftarMateriAdmin(Resource):
    @jwt_required
    @admin()
    def get(self, mapel, kelas):
        if mapel == "admin" and kelas == "admin":
            sql = """select * from materi"""
            return db.get_data(sql)
        else:
            sql = """select * from materi where mapel = %s and kelas = %s"""
            return db.get_data(sql,[mapel,kelas])


class UpdateMateri(Resource):
    @jwt_required
    @admin()
    def put(self, id):
        now = datetime.now()
        data = request.get_json()
        sql = """update materi set guru = %s, kelas = %s, mapel = %s, materi = %s, submateri = %s, isi = %s, link = %s, updated_at = %s"""
        params = [data["guru"],data["kelas"],data["mapel"],data["materi"],data["submateri"],data["isi"],data["link"],now]
        db.commit_data(sql,params)