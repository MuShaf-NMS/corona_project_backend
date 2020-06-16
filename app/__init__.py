from flask import Flask
from flask_restful import Api
from flask_cors import CORS
from app.util import custom_json_output
from app.db import Database
from flask_jwt_extended import JWTManager
from app.config import Config 


app = Flask(__name__)
app.config.from_object(Config)
api = Api(app)
db = Database(app)
jwt = JWTManager(app)
api.representations.update({
    'application/json': custom_json_output
})
cors = CORS(app, resources={r"*": {"origins": "*"}})

@jwt.token_in_blacklist_loader
def check_token(decrypted_token):
    jti = decrypted_token['jti']
    sql = """select * from black_list_token where jti = %s"""
    res = db.get_one(sql,[jti])
    return bool(res)
from app.router import router