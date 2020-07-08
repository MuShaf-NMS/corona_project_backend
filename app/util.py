import os
import sys
import datetime
import pymysql
from functools import wraps
from flask import jsonify, Response, make_response
import json
import decimal

# Custom encoder to serialize datetime object & decimal


class CustomEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, datetime.datetime):
            # return int(obj.strftime('%s'))
            return str(obj)
        elif isinstance(obj, datetime.date):
            # return int(obj.strftime('%s'))
            return str(obj)
        elif isinstance(obj, decimal.Decimal):
            return str(obj)
        return json.JSONEncoder.default(self, obj)
