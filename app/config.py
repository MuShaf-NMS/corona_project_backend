import os
from app.util import CustomEncoder


class Config(object):
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'diyasaya'
    RESTFUL_JSON = {'cls': CustomEncoder}
    JWT_BLACKLIST_ENABLED = True
    JWT_BLACKLIST_TOKEN_CHECKS = ['access', 'refresh']
