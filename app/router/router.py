from app import api
from app.controller.user import Login, LogoutAccessToken, Hello
from app.controller.admin import TambahAdmin, Admin, ProfileAdmin, UpdatePasswordAdmin, UpdateUsernameAdmin, UpdateAdmin, DeleteAdmin
from app.controller.siswa import TambahSiswa, ProfileSiswa, SiswaKelas, DaftarSiswa, UpdateUsernameSiswa, UpdatePasswordSiswa, UpdateSiswa, DeleteSiswa, SiswaKelasCabang
from app.controller.kelas import DaftarKelas, TambahKelas, UpdateKelas, DeleteKelas, Kelas, DaftarKelasLabel
from app.controller.mapel import Mapel, DaftarMapel, UpdateMapel, TambahMapel, DeleteMapel
from app.controller.materi import TambahMateri, DetailMateri, DaftarMateriSiswaKelas, DaftarMateriSiswaMapel, DaftarMateri, DaftarMateriKelas, DaftarMateriKelasLabel, DaftarMateriMapel, UpdateMateri, DeleteMateri, Materi
from app.controller.soal import TambahSoal, Jawab, CekSoal, SoalJawab, DeleteSoal, CekSiswa, DaftarSoal, DaftarSoalKelas, DaftarSoalKelasLabel, DaftarSoalMapel, Tampil, JumlahSoal, DaftarSoalSiswaKelas, DaftarSoalSiswaMapel
from app.controller.skor import Skor

# user
api.add_resource(Hello, "/")
api.add_resource(Login, "/login")
api.add_resource(LogoutAccessToken, "/logout-access-token")
# admin
api.add_resource(TambahAdmin, "/tambahadmin")
api.add_resource(UpdateAdmin, "/update-admin/<id>")
api.add_resource(DeleteAdmin, "/delete-admin/<id>")
api.add_resource(Admin, "/daftar-admin")
api.add_resource(ProfileAdmin, "/profile-admin/<id>")
api.add_resource(UpdateUsernameAdmin, "/update-username-admin/<id>")
api.add_resource(UpdatePasswordAdmin, "/update-password-admin/<id>")
# siswa
api.add_resource(TambahSiswa, "/tambahsiswa")
api.add_resource(UpdateSiswa, "/update-siswa/<id>")
api.add_resource(DeleteSiswa, "/delete-siswa/<id>")
api.add_resource(UpdateUsernameSiswa, "/update-username-siswa/<id>")
api.add_resource(UpdatePasswordSiswa, "/update-password-siswa/<id>")
api.add_resource(SiswaKelas, "/siswa/<kelas>")
api.add_resource(SiswaKelasCabang, "/siswa/<kelas>/<label>")
api.add_resource(DaftarSiswa, "/daftar-siswa/<kelas>/<label>")
api.add_resource(ProfileSiswa, "/profile-siswa/<id>")
# kelas
api.add_resource(DaftarKelas, "/daftar-kelas")
api.add_resource(TambahKelas, "/tambah-kelas")
api.add_resource(UpdateKelas, "/update-kelas/<uuid_kelas>")
api.add_resource(DeleteKelas, "/delete-kelas/<uuid_kelas>")
api.add_resource(Kelas, "/kelas/<uuid_user>")
api.add_resource(DaftarKelasLabel, "/daftar-kelas/<kelas>")
# mapel
api.add_resource(Mapel, "/mapel/<uuid_user>")
api.add_resource(DaftarMapel, "/daftar-mapel")
api.add_resource(TambahMapel, "/tambah-mapel")
api.add_resource(UpdateMapel, "/update-mapel/<uuid_mapel>")
api.add_resource(DeleteMapel, "/delete-matel/<uuid_mapel>")
# materi
api.add_resource(Materi, "/materi/<uuid_kelas>/<uuid_mapel>")
api.add_resource(DaftarMateri, "/daftar-materi/<uuid_user>")
api.add_resource(DaftarMateriKelas, "/daftar-materi/<uuid_user>/<kelas>")
api.add_resource(DaftarMateriKelasLabel,
                 "/daftar-materi/<uuid_user>/<kelas>/<label>")
api.add_resource(DaftarMateriMapel,
                 "/daftar-materi/<uuid_user>/<kelas>/<label>/<mapel>")
api.add_resource(DaftarMateriSiswaKelas, "/daftar-materi-siswa/<uuid_kelas>")
api.add_resource(DaftarMateriSiswaMapel,
                 "/daftar-materi-siswa/<uuid_kelas>/<uuid_mapel>")
api.add_resource(DetailMateri, "/materi/<id>")
api.add_resource(TambahMateri, "/tambahmateri/<uuid_user>")
api.add_resource(UpdateMateri, "/update-materi/<id>")
api.add_resource(DeleteMateri, "/delete-materi/<id>")
# soal
api.add_resource(TambahSoal, "/tambah-soal/<uuid_user>")
api.add_resource(DaftarSoal, "/daftar-soal/<uuid_user>")
api.add_resource(DaftarSoalKelas, "/daftar-soal/<uuid_user>/<kelas>")
api.add_resource(DaftarSoalKelasLabel,
                 "/daftar-soal/<uuid_user>/<kelas>/<label>")
api.add_resource(
    DaftarSoalMapel, "/daftar-soal/<uuid_user>/<kelas>/<label>/<mapel>")
api.add_resource(Tampil, "/tampil-soal/<uuid_materi>")
api.add_resource(DaftarSoalSiswaKelas, "/daftar-soal-siswa/<uuid_kelas>")
api.add_resource(DaftarSoalSiswaMapel,
                 "/daftar-soal-siswa/<uuid_kelas>/<uuid_mapel>")
api.add_resource(JumlahSoal, "/jumlah-soal/<uuid_materi>")
api.add_resource(DeleteSoal, "/delete-soal/<id>")
api.add_resource(Jawab, "/jawab-soal/<uuid_materi>")
api.add_resource(CekSoal, "/ceksoal/<uuid_materi>")
api.add_resource(SoalJawab, "/get-soal/<id>")
api.add_resource(CekSiswa, "/cek-siswa/<uuid_materi>")
# skor
api.add_resource(Skor, "/skor/<uuid_user>/<uuid_materi>")
