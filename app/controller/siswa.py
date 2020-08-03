from flask_restful import Resource
from flask import request
from app import app, db
from flask_jwt_extended import jwt_required
from passlib.hash import pbkdf2_sha256 as sha256
import uuid
from datetime import datetime
from app.middleware import siswa, superAdmin


def stringTime(dt):
    return datetime.strptime(dt, "%Y-%m-%d")


def postBioSiswa(uuid, nama, username, jk, alamat, tempat_lahir, tanggal_lahir, hp, email, now, uuid_siswa):
    sql = """insert into bio_siswa values(0,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"""
    params = [uuid, nama, username, jk, alamat, tempat_lahir,
              tanggal_lahir, hp, email, now, now, uuid_siswa]
    return db.commit_data(sql, params)


def postSiswa(uuid_siswa, uuid_kelas, username, password, now):
    sql = """insert into siswa values(0,%s,%s,%s,%s,%s,%s)"""
    params = [uuid_siswa, uuid_kelas, username, password, now, now]
    return db.commit_data(sql, params)


def putBioSiswa(uuid, nama, jk, alamat, tempat_lahir, tanggal_lahir, hp, email, now):
    sql1 = """update bio_siswa set nama = %s, jk = %s, alamat = %s, tanggal_lahir = %s, tempat_lahir = %s, hp = %s, email = %s, updated_at = %s where uuid = %s"""
    params = [nama, jk, alamat, tanggal_lahir,
              tempat_lahir, hp, email, now, uuid]
    db.commit_data(sql, params)


def putSiswa(uuid_siswa, uuid_kelas, now):
    sql = """update siswa set uuid_kelas = %s, updated_at = %s where uuid = %s"""
    params = [uuid_kelas, now, uuid_siswa]
    db.commit_data(sql, params)


def deleteBioSiswa(uuid):
    sql = """delete from bio_siswa where uuid = %s"""
    db.commit_data(sql, [uuid])


def deleteSiswa(uuid_siswa):
    sql = """delete from siswa where uuid = %s"""
    db.commit_data(sql, [uuid_siswa])


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
    sql = """select password from siswa where uuid = %s"""
    return sha256.verify(password, db.get_one(sql, [id])["password"])


def checkingUser(user):
    if checkAdmin(user) == None and checkSiswa(user) == None:
        return True
    else:
        return False


class ProfileSiswa(Resource):
    @jwt_required
    @siswa()
    def get(self, id):
        sql = """select * from bio_siswa where uuid_siswa = %s"""
        return db.get_one(sql, [id])


class UpdateUsernameSiswa(Resource):
    @jwt_required
    @siswa()
    def get(self, id):
        sql = """select username from siswa where uuid = %s"""
        return db.get_one(sql, [id])

    @jwt_required
    @siswa()
    def put(self, id):
        data = request.get_json()
        if checkingUser(data["username"]):
            if verifyPassword(id, data["password"]):
                sql1 = """update siswa set username = %s where uuid = %s"""
                db.commit_data(sql1, [data["username"], id])
                sql2 = """update bio_siswa set username = %s where uuid_siswa = %s"""
                db.commit_data(sql2, [data["username"], id])
                return {"msg": "Sukses"}
            else:
                return {"msg": "Salah"}
        else:
            return {"msg": "Maaf"}


class UpdatePasswordSiswa(Resource):
    @jwt_required
    @siswa()
    def put(self, id):
        data = request.get_json()
        if verifyPassword(id, data["password_lama"]):
            sql = """update siswa set password = %s where uuid = %s"""
            db.commit_data(sql, [sha256.hash(data["password_baru"]), id])
            return {"msg": "Sukses"}
        else:
            return {"msg": "Maaf"}


class TambahSiswa(Resource):
    @jwt_required
    @superAdmin()
    def post(self):
        now = datetime.now()
        data = request.get_json()
        if checkingUser(data["username"]):
            uuid_bio = str(uuid.uuid4())
            uuid_siswa = str(uuid.uuid4())
            password = sha256.hash(data["password"])
            tanggal_lahir = stringTime(data["tanggal_lahir"])
            postBioSiswa(uuid_bio, data["nama"], data["username"], data["jk"], data["alamat"],
                         data["tempat_lahir"], tanggal_lahir, data["hp"], data["email"], now, uuid_siswa)
            postSiswa(uuid_siswa, data["uuid_kelas"], data["username"],
                      password, now)
            return {"msg": "Sukses"}
        else:
            return {"msg": "maaf, username ini sudah ada"}


class UpdateSiswa(Resource):
    @jwt_required
    @superAdmin()
    def get(self, id):
        sql = """select nama, uuid_kelas, jk, alamat, tempat_lahir, tanggal_lahir, hp, email from bio_siswa join siswa on uuid_siswa = siswa.uuid where bio_siswa.uuid = %s"""
        return db.get_one(sql, [id])

    @jwt_required
    @superAdmin()
    def put(self, id):
        now = datetime.now()
        data = request.get_json()
        sql = """select uuid_siswa from bio_siswa where uuid = %s"""
        uuid_siswa = db.get_one(sql, [id])["uuid_siswa"]
        tanggal_lahir = stringTime(data["tanggal_lahir"])
        putBioSiswa(id, data["nama"], data["jk"], data["alamat"],
                    data["tempat_lahir"], tanggal_lahir, data["hp"], data["email"], now)
        putSiswa(uuid_siswa, data["uuid_kelas"], now)


class DaftarSiswa(Resource):
    @jwt_required
    @superAdmin()
    def get(self, kelas, label):
        sql = """select nama, jk, bio_siswa.uuid, bio_siswa.created_at, bio_siswa.updated_at from bio_siswa join siswa on siswa.uuid = bio_siswa.uuid_siswa join kelas on siswa.uuid_kelas = kelas.uuid where kelas = %s and label = %s"""
        return db.get_data(sql, [kelas, label])


class SiswaKelas(Resource):
    @jwt_required
    @superAdmin()
    def get(self, kelas):
        sql = """select kelas, count(cabang.label) as cabang, sum(cabang.siswa) as jml_siswa from kelas, (select label, count(username) as siswa from kelas left outer join siswa on kelas.uuid = siswa.uuid_kelas where kelas = %s group by label) as cabang where kelas.label = cabang.label and kelas = %s group by kelas"""
        return db.get_one(sql, [kelas, kelas])


class SiswaKelasCabang(Resource):
    @jwt_required
    @superAdmin()
    def get(self, kelas, label):
        sql = """select kelas, label, count(username) as jml_siswa from kelas join siswa on kelas.uuid = siswa.uuid_kelas where kelas = %s and label = %s"""
        return db.get_one(sql, [kelas, label])


class DeleteSiswa(Resource):
    @jwt_required
    @superAdmin()
    def delete(self, id):
        sql = """select uuid_siswa from bio_siswa where uuid = %s"""
        uuid_siswa = db.get_one(sql, [id])["uuid_siswa"]
        deleteBioSiswa(id)
        deleteSiswa(uuid_siswa)
