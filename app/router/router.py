from app import api
from app.controller.user import Login, LogoutAccessToken, LogoutRefreshToken
from app.controller.siswa import TambahSiswa, ProfileSiswa, SiswaKelas, Siswa, UpdateUsernameSiswa, UpdatePasswordSiswa, UpdateSiswa, DeleteSiswa
from app.controller.admin import TambahAdmin, Admin, ProfileAdmin, UpdatePasswordAdmin, UpdateUsernameAdmin, UpdateAdmin, DeleteAdmin
from app.controller.soal import TambahSoal, Jawab, SoalAdmin, CekSoal, SoalSiswa, SoalJawab, DaftarSkor, Skor, DeleteSoal, CekSiswa
from app.controller.materi import TambahMateri, DetailMateri, DaftarMateriSiswa, DaftarMateri, DaftarMateriKelas, DaftarMateriMapel, UpdateMateri, DeleteMateri
from app.controller.kelas import DaftarKelas, TambahKelas, UpdateKelas, DeleteKelas, Kelas, DaftarKelasLabel

api.add_resource(Login, "/login")
api.add_resource(LogoutAccessToken, "/logout-access-token")
api.add_resource(LogoutRefreshToken, "/logout-refresh-token")
api.add_resource(TambahSiswa, "/tambahsiswa")
api.add_resource(UpdateSiswa, "/update-siswa/<id>")
api.add_resource(DeleteSiswa, "/delete-siswa/<id>")
api.add_resource(TambahAdmin, "/tambahadmin")
api.add_resource(UpdateAdmin, "/update-admin/<id>")
api.add_resource(DeleteAdmin, "/delete-admin/<id>")
api.add_resource(DaftarMateri, "/daftar-materi/<uuid_user>")
api.add_resource(DaftarMateriKelas, "/daftar-materi/<uuid_user>/<kelas>")
api.add_resource(DaftarMateriMapel, "/daftar-materi/<uuid_user>/<kelas>/<mapel>")
api.add_resource(DaftarMateriSiswa, "/daftar-materi-siswa/<kelas>")
api.add_resource(DetailMateri, "/materi/<id>")
api.add_resource(ProfileSiswa, "/profile-siswa/<id>")
api.add_resource(UpdateUsernameSiswa, "/update-username-siswa/<id>")
api.add_resource(UpdatePasswordSiswa, "/update-password-siswa/<id>")
api.add_resource(TambahMateri, "/tambahmateri/<uuid_user>")
api.add_resource(UpdateMateri, "/update-materi/<id>")
api.add_resource(DeleteMateri, "/delete-materi/<id>")
api.add_resource(Admin, "/daftar-admin")
api.add_resource(ProfileAdmin, "/profile-admin/<id>")
api.add_resource(UpdateUsernameAdmin, "/update-username-admin/<id>")
api.add_resource(UpdatePasswordAdmin, "/update-password-admin/<id>")
api.add_resource(SiswaKelas, "/daftar-siswa/<kelas>")
api.add_resource(Siswa, "/daftar-siswa")
api.add_resource(TambahSoal, "/tambah-soal/<uuid_user>")
api.add_resource(DeleteSoal, "/delete-soal/<id>")
api.add_resource(Jawab, "/jawab-soal/<kelas>/<mapel>/<materi>")
api.add_resource(SoalAdmin, "/admin/daftar-soal/<uuid_user>")
api.add_resource(CekSoal, "/ceksoal/<kelas>/<mapel>/<materi>")
api.add_resource(SoalSiswa, "/soal/<kelas>")
api.add_resource(SoalJawab, "/get-soal/<id>")
api.add_resource(CekSiswa, "/cek-siswa/<kelas>/<mapel>/<materi>")
api.add_resource(DaftarSkor, "/skor/<uuid_user>")
api.add_resource(Skor, "/skor/<uuid_user>/<materi>")
api.add_resource(DaftarKelas, "/daftar-kelas")
api.add_resource(TambahKelas, "/tambah-kelas")
api.add_resource(UpdateKelas, "/update-kelas/<uuid>")
api.add_resource(DeleteKelas, "/delete-kelas/<uuid>")
api.add_resource(Kelas, "/kelas/<uuid_user>")
api.add_resource(DaftarKelasLabel, "/daftar-kelas/<kelas>")
