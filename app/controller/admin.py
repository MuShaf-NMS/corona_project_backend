from flask_restful import Resource
from flask import request
from app import app, db
from flask_jwt_extended import jwt_required
from datetime import datetime
from passlib.hash import pbkdf2_sha256 as sha256
import uuid

def stringTime(dt):
    return datetime.strptime(dt,"%Y-%m-%d")

def postBioUser(uuid,nama,username,jk,alamat,tempat_lahir,tanggal_lahir,hp,email,now,uuid_user):
    sql = """insert into bio_user values(0,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"""
    params = [uuid,nama,username,jk,alamat,tempat_lahir,tanggal_lahir,hp,email,now,now,uuid_user]
    return db.commit_data(sql,params)

def postUser(uuid_user,username,password,superadmin,now):
    sql = """insert into user values(0,%s,%s,%s,%s,%s,%s)"""
    params = [uuid_user,username,password,superadmin,now,now]
    return db.commit_data(sql,params)

class TambahMateri(Resource):
    @jwt_required
    def post(self):
        now = datetime.now()
        data = request.get_json()
        sql = """insert into materi values(0,%s,%s,%s,%s,%s,%s,%s,%s)"""
        params = [str(uuid.uuid4()),data["mapel"],data["guru"],data["materi"],data["submateri"],data["isi"],now,now]
        return db.commit_data(sql,params)

class Admin(Resource):
    @jwt_required
    def get(self):
        sql = "select * from user"
        return db.get_data(sql)

class ProfileAdmin(Resource):
    @jwt_required
    def get(self,id):
        sql = "select * from bio_user where uuid_user = %s"
        return db.get_one(sql,[id])

class TambahAdmin(Resource):
    @jwt_required
    def post(self):
        now = datetime.now()
        data = request.get_json()
        uuid_bio = str(uuid.uuid4())
        uuid_user = str(uuid.uuid4())
        password = sha256.hash(data["password"])
        now = datetime.now()
        tanggal_lahir = stringTime(data["tanggal_lahir"])
        postBioUser(uuid_bio,data["nama"],data["username"],data["jk"],data["alamat"],data["tempat_lahir"],tanggal_lahir,data["hp"],data["email"],now,uuid_user)
        postUser(uuid_user,data["username"],password,data["superadmin"],now)
        
class Siswa(Resource):
    @jwt_required
    def get(self):
        sql = "select * from siswa"
        return db.get_data(sql)
