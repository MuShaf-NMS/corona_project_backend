from flask_restful import Resource
from flask_jwt_extended import jwt_required
from app import app, db
from app.middleware import admin


class Skor(Resource):
    @jwt_required
    def get(self, uuid_user, uuid_materi):
        if uuid_user == "admin":
            sql = """select nama, skor, skor.created_at from bio_siswa join siswa on bio_siswa.uuid_siswa = siswa.uuid join materi on siswa.uuid_kelas = materi.uuid_kelas left outer join skor on siswa.uuid = skor.uuid_siswa and materi.uuid = skor.uuid_materi where materi.uuid = %s"""
            return db.get_data(sql, [uuid_materi])
        else:
            sql = """select nama, skor, skor.created_at from bio_siswa join siswa on bio_siswa.uuid_siswa = siswa.uuid join materi on siswa.uuid_kelas = materi.uuid_kelas left outer join skor on siswa.uuid = skor.uuid_siswa and materi.uuid = skor.uuid_materi where materi.uuid_user = %s and materi.uuid = %s"""
            return db.get_data(sql, [uuid_user, uuid_materi])
