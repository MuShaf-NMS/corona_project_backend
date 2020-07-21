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


def postPengampu(uuid_user, bidang_studi, kelas_ampu, now):
    sql = """insert into pengampu values(0,%s,%s,%s,%s)"""
    params = [uuid_user, bidang_studi, kelas_ampu, now]
    return db.commit_data(sql, params)


def putBioUser(id, nama, jk, alamat, tanggal_lahir, tempat_lahir, hp, email, now):
    sql = """update bio_user set nama = %s, jk = %s, alamat = %s, tanggal_lahir = %s, tempat_lahir = %s, hp = %s, email = %s, updated_at = %s where uuid = %s"""
    params = [nama, jk, alamat, tanggal_lahir, tempat_lahir, hp, email, now, id]
    db.commit_data(sql, params)

def putUser(id_user,superadmin,now):
    sql = """update user set superadmin = %s, updated_at = %s where uuid = %s"""
    db.commit_data(sql,[superadmin,now,id])

def putPengampu(uuid_user, bidang_studi, kelas_ampu, now):
    db.commit_data("""delete from pengampu where uuid_user = %s""",[id_user])
    sql = """insert into pengampu values(0,%s,%s,%s,%s)"""
    params = [uuid_user, bidang_studi, kelas_ampu, now]
    return db.commit_data(sql, params)

def deleteUser(id):
    sql = """delete from user where uuid = %s"""
    db.commit_data(sql, [id])


def deleteBioUser(id):
    sql = """delete from bio_user where uuid = %s"""
    db.commit_data(sql, [id])


def deletePengampu(id):
    sql = """delete from pengampu where uuid = %s"""
    db.commit_data(sql, [id])


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


class Admin(Resource):
    @jwt_required
    @superAdmin()
    def get(self):
        sql = "select nama, superadmin, bio_user.uuid, uuid_user, bio_user.created_at, bio_user.updated_at from bio_user join user on bio_user.uuid_user = user.uuid"
        hasil = db.get_data(sql)
        for i in hasil:
            if i["superadmin"] == 1:
                i["superadmin"] = True
            else:
                i["superadmin"] = False
        return hasil


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
                return {"msg": "Salah"}
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
            return {"msg": "Sukses"}
        else:
            return {"msg": "Maaf"}


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
            if len(data["ampu"]) > 0:
                for i in data["ampu"]:
                    postPengampu(uuid_user, i["bidang_studi"], i["kelas_ampu"], now)
            return {"msg": "Sukses"}
        else:
            return {"msg": "Maaf"}


class UpdateAdmin(Resource):
    @jwt_required
    @superAdmin()
    def get(self, id):
        sql = """select nama, jk, alamat, tempat_lahir, tanggal_lahir, hp, email, superadmin, ampu.bidang_studi as bidang_studi, ampu.kelas_ampu as kelas_ampu from bio_user left outer join user on bio_user.uuid_user = user.uuid, (select user.uuid, group_concat(bidang_studi) as bidang_studi, group_concat(kelas_ampu) as kelas_ampu from user left outer join pengampu on user.uuid = pengampu.uuid_user group by user.uuid) as ampu where user.uuid = ampu.uuid and bio_user.uuid = %s"""
        res = db.get_one(sql, [id])
        res["ampu"] = []
        if res["bidang_studi"] != None:
            res["bidang_studi"] = res["bidang_studi"].split(",")
            res["kelas_ampu"] = res["kelas_ampu"].split(",")
            for i in range(len(res["kelas_ampu"])):
                ampu = {"bidang_studi": res["bidang_studi"]
                        [i], "kelas_ampu": res["kelas_ampu"][i]}
                res["ampu"].append(ampu)
        return res

    @jwt_required
    @superAdmin()
    def put(self, id):
        now = datetime.now()
        data = request.get_json()
        sql = """select uuid_user from bio_user where uuid = %s"""
        id_user = db.get_one(sql,[id])["uuid_user"]
        tanggal_lahir = stringTime(data["tanggal_lahir"])
        putBioUser(id,data["nama"],data["jk"],data["alamat"],tanggal_lahir,data["tempat_lahir"],data["hp"],data["email"],now)
        putUser(id_user,data["superadmin"],now)
        if len(data["ampu"]) > 0:
            for i in data["ampu"]:
                putPengampu(id_user,i["bidang_studi"],i["kelas_ampu"])


class DeleteAdmin(Resource):
    def delete(self, id):
        sql = """select uuid_user from bio_user where uuid = %s"""
        id_user = db.get_one(sql,[id])["uuid_user"]
        deleteBioUser(id)
        deleteUser(id_user)
        deletePengampu(id_user)
