from flask_restful import Resource
from flask import request
from app import app, db
from flask_jwt_extended import jwt_required
from datetime import datetime
from passlib.hash import pbkdf2_sha256 as sha256
from app.middleware import admin, superAdmin
import uuid


def stringTime(dt):
    return datetime.strptime(dt, "%Y-%m-%d")


def postBioUser(uuid, nama, username, jk, alamat, tempat_lahir, tanggal_lahir, hp, email, now, uuid_user):
    sql = """insert into bio_user values(0,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"""
    params = [uuid, nama, username, jk, alamat, tempat_lahir,
              tanggal_lahir, hp, email, now, now, uuid_user]
    return db.commit_data(sql, params)


def postUser(uuid_user, username, password, superadmin, now):
    sql = """insert into user values(0,%s,%s,%s,%s,%s,%s)"""
    params = [uuid_user, username, password, superadmin, now, now]
    return db.commit_data(sql, params)


def checkAdmin(user):
    sql = """select * from user where username = %s"""
    params = [user]
    res = db.get_one(sql, params)
    return res


def checkSiswa(user):
    sql = """select * from siswa where username = %s"""
    params = [user]
    res = db.get_one(sql, params)
    return res


def verifyPassword(id, password):
    sql = """select password from user where uuid = %s"""
    return sha256.verify(password, db.get_one(sql, [id])["password"])


def checkingUser(user):
    if checkAdmin(user) == None and checkSiswa(user) == None:
        return True
    else:
        return False


class TambahMateri(Resource):
    @jwt_required
    @admin()
    def post(self):
        now = datetime.now()
        data = request.get_json()
        sql = """insert into materi values(0,%s,%s,%s,%s,%s,%s,%s,%s)"""
        params = [str(uuid.uuid4()), data["mapel"], data["guru"],
                  data["materi"], data["submateri"], data["isi"], now, now]
        return db.commit_data(sql, params)


class Admin(Resource):
    @jwt_required
    @superAdmin()
    def get(self):
        sql = "select * from bio_user"
        return db.get_data(sql)


class ProfileAdmin(Resource):
    @jwt_required
    @admin()
    def get(self, id):
        sql = "select * from bio_user where uuid_user = %s"
        return db.get_one(sql, [id])


class UpdateUsernameAdmin(Resource):
    @jwt_required
    @admin()
    def get(self, id):
        sql = """select username from user where uuid = %s"""
        return db.get_one(sql, [id])

    @jwt_required
    @admin()
    def put(self, id):
        data = request.get_json()
        if checkingUser(data["username"]):
            if verifyPassword(id, data["password"]):
                sql1 = """update user set username = %s where uuid = %s"""
                db.commit_data(sql1, [data["username"], id])
                sql2 = """update bio_user set username = %s where uuid_user = %s"""
                db.commit_data(sql2, [data["username"], id])
                return {"msg": "Sukses"}
        else:
            return {"msg": "Maaf"}


class UpdatePasswordAdmin(Resource):
    @jwt_required
    @admin()
    def put(self, id):
        data = request.get_json()
        if verifyPassword(id, data["password_lama"]):
            sql = """update user set password = %s where uuid = %s"""
            db.commit_data(sql, [sha256.hash(data["password_baru"]), id])


class TambahAdmin(Resource):
    @jwt_required
    @superAdmin()
    def post(self):
        now = datetime.now()
        data = request.get_json()
        if checkingUser(data["username"]):
            uuid_bio = str(uuid.uuid4())
            uuid_user = str(uuid.uuid4())
            password = sha256.hash(data["password"])
            tanggal_lahir = stringTime(data["tanggal_lahir"])
            postBioUser(uuid_bio, data["nama"], data["username"], data["jk"], data["alamat"],
                        data["tempat_lahir"], tanggal_lahir, data["hp"], data["email"], now, uuid_user)
            postUser(uuid_user, data["username"],
                     password, data["superadmin"], now)
        else:
            return {"msg": "maaf, username ini sudah ada"}


class UpdateAdmin(Resource):
    @jwt_required
    @superAdmin()
    def get(self, id):
        sql = """select nama, jk, alamat, tempat_lahir, tanggal_lahir, hp, email from bio_user where uuid = %s"""
        print(db.get_one(sql, [id]))
        return db.get_one(sql, [id])

    @jwt_required
    @superAdmin()
    def put(self, id):
        now = datetime.now()
        data = request.get_json()
        sql = """update bio_user set nama = %s, jk = %s, alamat = %s, tanggal_lahir = %s, tempat_lahir = %s, hp = %s, email = %s, updated_at = %s where uuid = %s"""
        params = [data["nama"], data["jk"], data["alamat"], data["tanggal_lahir"],
                  data["tempat_lahir"], data["hp"], data["email"], now, id]
        db.commit_data(sql, params)
