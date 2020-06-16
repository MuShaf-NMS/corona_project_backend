import os

class Config(object):
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'diyasaya'
    JWT_BLACKLIST_ENABLED = True
    JWT_BLACKLIST_TOKEN_CHECKS = ['access','refresh']