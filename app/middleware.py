from functools import wraps
from flask_jwt_extended import get_jwt_identity
from flask import Response
from app import db


def siswa():
    def _siswa(f):
        @wraps(f)
        def __siswa(*args, **kwargs):
            result = f(*args, **kwargs)
            data = get_jwt_identity()
            sql = """select * from siswa where username = %s"""
            hasil = db.get_one(sql, [data])
            if hasil == None:
                return Response('Not allowed', mimetype="text/plain", status=405)
            return result
        return __siswa
    return _siswa


def admin():
    def _admin(f):
        @wraps(f)
        def __admin(*args, **kwargs):
            result = f(*args, **kwargs)
            data = get_jwt_identity()
            sql = """select * from user where username = %s"""
            hasil = db.get_one(sql, [data])
            if hasil == None:
                return Response('Not allowed', mimetype="text/plain", status=405)
            return result
        return __admin
    return _admin


def superAdmin():
    def _superAdmin(f):
        @wraps(f)
        def __superAdmin(*args, **kwargs):
            result = f(*args, **kwargs)
            data = get_jwt_identity()
            sql = """select * from user where username = %s and superadmin = 1"""
            hasil = db.get_one(sql, [data])
            if hasil == None:
                return Response('Not allowed', mimetype="text/plain", status=405)
            return result
        return __superAdmin
    return _superAdmin
