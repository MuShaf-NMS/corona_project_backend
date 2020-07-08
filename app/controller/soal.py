from flask_restful import Resource
from flask import request
from flask_jwt_extended import jwt_required
from app import app, db
from datetime import datetime
from passlib.hash import pbkdf2_sha256 as sha256
from app.middleware import admin, siswa
import uuid

def cekJawaban(uuid_soal,jawaban):
    sql = """select kunci_jawaban from soal where uuid = %s"""
    hasil = db.get_one(sql,[uuid_soal])
    return sha256.verify(jawaban,hasil["kunci_jawaban"])

def postSoal(uuid,kelas,mapel,materi,soal,kunci,now):
    sql = """insert into soal values(0,%s,%s,%s,%s,%s,%s,%s,%s)"""
    params = [uuid,kelas,mapel,materi,soal,kunci,now,now]
    db.commit_data(sql,params)

def postMC(uuid_soal,opsi):
    uuid_mc = str(uuid.uuid4())
    sql = """insert into mc_soal values(0,%s,%s,%s)"""
    params = [uuid_mc,uuid_soal,opsi]
    db.commit_data(sql,params)

class Soal(Resource):
    @jwt_required
    def get(self):
        sql = """select * from soal"""
        return db.get_data(sql)

class TambahSoal(Resource):
    @jwt_required
    @admin()
    def post(self):
        now = datetime.now()
        data = request.get_json()
        print(data)
        for i in data:
            print(i)
            uuid_soal = str(uuid.uuid4())
            uuid_mc = str(uuid.uuid4())
            postSoal(uuid_soal,i["kelas"],i["mapel"],i["materi"],i["soal"],i["opsi"][0],now)
            for j in i["opsi"]:
                postMC(uuid_soal,j)

class Jawab(Resource):
    @jwt_required
    @siswa()
    def get(self,id):
        sql = """select * from soal left outer join jawaban on soal.uuid = jawaban.uuid_soal where soal.uuid = %s"""
        return db.get_one(sql,[id])
    def post(self,id):
        now = datetime.now()
        data = request.get_json()
        if cekJawaban(id,data["jawaban"]):
            sql = """insert into jawaban values(0,%s,%s,%s,%s)"""
            params = [str(uuid.uuid4()),data["uuid_siswa"],id,now]
            db.commit_data(sql,params)
            return {"msg": "Benar"}
        else:
            return {"msg": "salah"}