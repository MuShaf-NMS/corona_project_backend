from app import api
from app.controller.user import Login, LogoutAccessToken, LogoutRefreshToken
from app.controller.siswa import TambahSiswa, Pelajaran
from app.controller.admin import TambahAdmin, Materi, Admin, Siswa

api.add_resource(Login,"/login")
api.add_resource(LogoutAccessToken,"/logout-access-token")
api.add_resource(LogoutRefreshToken,"/logout-refresh-token")
api.add_resource(TambahSiswa,"/tambahsiswa")
api.add_resource(TambahAdmin,"/tambahadmin")
api.add_resource(Pelajaran,"/pelajaran")
api.add_resource(Materi,"/materi")
api.add_resource(Admin,"/daftar-admin")
api.add_resource(Siswa,"/daftar-siswa")