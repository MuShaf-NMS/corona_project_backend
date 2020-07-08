import pymysql


class Database:
    def __init__(self, app):
        self.app = app

    def koneksi(self):
        db = pymysql.connect('localhost', 'root', 'root', 'corona')
        return db

    def get_data(self, sql, params=[]):
        """
        Mengeluarkan beberapa records dari database berdasarkan query(sql)
        dan parameternya(params) dalam bentuk list dengan elemen berupa dictionary
        """
        try:
            con = self.koneksi()
            cur = con.cursor(pymysql.cursors.DictCursor)
            cur.execute(sql, params)
            hasil = cur.fetchall()
            return hasil
        except Exception as e:
            self.app.logger.info(e)
        finally:
            con.close()

    def get_one(self, sql, params=[]):
        """
        Mengeluarkan sebuah record dari database berdasarkan query(sql)
        dan parameternya(params) dalam bentuk dictionary
        """
        try:
            con = self.koneksi()
            cur = con.cursor(pymysql.cursors.DictCursor)
            cur.execute(sql, params)
            hasil = cur.fetchone()
            return hasil
        except Exception as e:
            self.app.logger.info(e)
        finally:
            con.close()

    def commit_data(self, sql, params=[]):
        try:
            con = self.koneksi()
            cur = con.cursor(pymysql.cursors.DictCursor)
            cur.execute(sql, params)
            con.commit()
        except Exception as e:
            self.app.logger.info(e)
        finally:
            con.close()
