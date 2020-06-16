from flask_restful import Resource
from flask import request
from app import app, db
from flask_jwt_extended import jwt_required
from passlib.hash import pbkdf2_sha256 as sha256
import uuid
from datetime import datetime

class Pelajaran(Resource):
    @jwt_required
    def get(self):
        return {
            "pelajaran" : "Matematika"
        }

class TambahSiswa(Resource):
    def post(self):
        now = datetime.now()
        data = request.get_json()
        sql = """insert into siswa values(0,%s,%s,%s,%s,%s)"""
        params = [str(uuid.uuid4()),data["username"],sha256.hash(data["password"]),now,now]
        return db.commit_data(sql,params)