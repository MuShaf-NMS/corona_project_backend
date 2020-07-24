from flask_restful import Resource
from flask import request
from app import app, db
from flask_jwt_extended import jwt_required
from datetime import datetime
from passlib.hash import pbkdf2_sha256 as sha256
from app.middleware import superAdmin
import uuid


class Mapel(Resource):
    def get(self,uuid_user):
        if uuid_user == "admin":
            sql = """select mapel, uuid from mapel"""
            res = db.get_data(sql)
        else:
            sql = """select mapel, uuid from pengampu join mapel on pengampu.uuid_kelas = kelas.uuid where uuid_user = %s"""
            res = db.get_data(sql,[uuid_user])
        for i in res:
            i["text"] = i["mapel"]
            i["value"] = i["uuid"]
            del i["uuid"]
        return res

class DaftarMapel(Resource):
    def get(self):
        sql = """select mapel, uuid from mapel"""
        return db.get_data(sql)


class TambahMapel(Resource):
    def post(self):
        data = request.get_json()
        uuid_mapel = str(uuid.uuid4())
        sql = """insert into mapel values(0,%s, %s)"""
        db.commit_data(sql,[uuid_mapel, data["mapel"]])

class UpdateMapel(Resource):
    def get(self,uuid_mapel):
        sql = """select * from mapel where uuid = %s"""
        print(db.get_one(sql,[uuid_mapel]))
        return db.get_one(sql,[uuid_mapel])
    
    def put(self,uuid_mapel):
        data = request.get_json()
        print(data)
        sql = """update mapel set mapel = %s where uuid = %s"""
        db.commit_data(sql,[data["mapel"],uuid_mapel])

class DeleteMapel(Resource):
    def delete(self,uuid_mapel):
        sql = """delete from mapel where uuid = %s"""
        db.commit_data(sql,[uuid_mapel])
