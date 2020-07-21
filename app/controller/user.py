from flask_restful import Resource
from app import app, db
from flask import request
from datetime import datetime, timedelta
from passlib.hash import pbkdf2_sha256 as sha256
from flask_jwt_extended import(create_access_token, create_refresh_token,
                               jwt_refresh_token_required, get_jwt_identity, get_raw_jwt, jwt_required)
import uuid


def verifyHash(password, hash):
    return sha256.verify(password, hash)


def checkAdmin(user):
    sql = """select user.uuid, user.username, user.password, superadmin, ampu.bidang_studi, ampu.kelas_ampu from user, (select user.uuid, group_concat(bidang_studi) as bidang_studi, group_concat(kelas_ampu) as kelas_ampu from user left outer join pengampu on user.uuid = pengampu.uuid_user group by user.uuid) as ampu where user.uuid = ampu.uuid and username = %s"""
    params = [user]
    res = db.get_one(sql, params)
    res["bidang_studi"] = list(dict.fromkeys(res["bidang_studi"].split(",")))
    res["kelas_ampu"] = list(dict.fromkeys(res["kelas_ampu"].split(",")))
    return res


def checkSiswa(user):
    sql = """select * from siswa where username = %s"""
    params = [user]
    res = db.get_one(sql, params)
    return res


def checkingUser(user):
    res = checkAdmin(user)
    if res == None:
        res = checkSiswa(user)
    return res


def saveBlacklistToken(jti):
    sql = """insert into black_list_token values(0,%s)"""
    db.commit_data(sql, [jti])


class Login(Resource):
    def post(self):
        data = request.get_json()
        user = checkingUser(data['username'])
        try:
            if user != None:
                if verifyHash(data["password"], user["password"]):
                    accessToken = create_access_token(
                        identity=user["uuid"], expires_delta=timedelta(hours=6))
                    refreshToken = ''
                    res = {
                        "accessToken": accessToken,
                        "username": data["username"],
                        "uuid": user["uuid"],
                        "status": "siswa"
                    }
                    if "superadmin" in user:
                        res["status"] = "admin"
                        res["kelas_ampu"] = user["kelas_ampu"]
                        res["bidang_studi"] = user["bidang_studi"]
                        if user["superadmin"]:
                            res["superadmin"] = True
                        else:
                            res["superadmin"] = False
                            #res["ampu"] = user["ampu"]
                    elif "kelas" in user:
                        res["kelas"] = user["kelas"]
                    return res
            return {
                "msg": "oops user or password wrong"
            }, 403
        except Exception as e:
            app.logger.error(e)
            return {
                "msg": "oops something wrong"
            }


class LogoutAccessToken(Resource):
    @jwt_required
    def get(self):
        jti = get_raw_jwt()["jti"]
        saveBlacklistToken(jti)
        return {
            "msg": "token has been revoked"
        }


class LogoutRefreshToken(Resource):
    @jwt_refresh_token_required
    def get(self):
        jti = get_raw_jwt()["jti"]
        saveBlacklistToken(jti)
        return {
            "msg": "refresh token has been revoked"
        }
