from app import api
from app.controller.user import Login, LogoutAccessToken, LogoutRefreshToken
from app.controller.siswa import TambahSiswa, DaftarMateri, DetailMateri, ProfileSiswa, Siswa, UpdateUsernameSiswa, UpdatePasswordSiswa, UpdateSiswa
from app.controller.admin import TambahAdmin, TambahMateri, Admin, ProfileAdmin, UpdatePasswordAdmin, UpdateUsernameAdmin, UpdateAdmin
from app.controller.soal import TambahSoal, Jawab, SoalAdmin, CekSoal, SoalSiswa, SoalJawab

api.add_resource(Login, "/login")
api.add_resource(LogoutAccessToken, "/logout-access-token")
api.add_resource(LogoutRefreshToken, "/logout-refresh-token")
api.add_resource(TambahSiswa, "/tambahsiswa")
api.add_resource(UpdateSiswa, "/update-siswa/<id>")
api.add_resource(TambahAdmin, "/tambahadmin")
api.add_resource(UpdateAdmin, "/update-admin/<id>")
api.add_resource(DaftarMateri, "/materi")
api.add_resource(DetailMateri, "/materi/<id>")
api.add_resource(ProfileSiswa, "/profile-siswa/<id>")
api.add_resource(UpdateUsernameSiswa, "/update-username-siswa/<id>")
api.add_resource(UpdatePasswordSiswa, "/update-password-siswa/<id>")
api.add_resource(TambahMateri, "/tambahmateri")
api.add_resource(Admin, "/daftar-admin")
api.add_resource(ProfileAdmin, "/profile-admin/<id>")
api.add_resource(UpdateUsernameAdmin, "/update-username-admin/<id>")
api.add_resource(UpdatePasswordAdmin, "/update-password-admin/<id>")
api.add_resource(Siswa, "/daftar-siswa")
api.add_resource(TambahSoal, "/tambah-soal")
api.add_resource(Jawab, "/jawab-soal/<kelas>/<mapel>/<materi>")
api.add_resource(SoalAdmin, "/admin/daftar-soal")
api.add_resource(CekSoal, "/ceksoal/<kelas>/<mapel>/<materi>")
api.add_resource(SoalSiswa, "/soal/<kelas>")
api.add_resource(SoalJawab, "/get-soal/<id>")