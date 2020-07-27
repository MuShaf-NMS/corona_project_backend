from flask_restful import Resource
from flask_jwt_extended import jwt_required
from app import app, db
from app.middleware import admin


class Skor(Resource):
    @jwt_required
    def get(self, uuid_user, uuid_materi):
        if uuid_user == "admin":
            sql = """select nama, skor, created_at from bio_siswa join siswa on bio_siswa.uuid_siswa = siswa.uuid join skor on siswa.uuid = skor.uuid_siswa where uuid_materi = %s"""
            return db.get_data(sql, [uuid_materi])
        else:
            sql = """select nama, skor, skor.created_at from bio_siswa join siswa on bio_siswa.uuid_siswa = siswa.uuid join skor on siswa.uuid = skor.uuid_siswa where skor.uuid_user = %s and uuid_materi = %s"""
            return db.get_data(sql, [uuid_user, uuid_materi])
