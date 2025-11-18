# Tugas 7

1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
Jawab = widget tree adalah struktur penyusunan UI di flutter yang berbentuk seperti pohon. Jadi setiap widget bisa memiliki widget lain didalamnya yaitu parent (widget yang membungkus widget lain) dan child (widget yang berada didalam parent). Parent mengatur bagaimana child di tampilkan seperti horizontal, vertikal, ada jarak atau tidak, dll.

2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
Jawab = Material app (ngatur tema, styling, semacam dasar aplikasi, rute halaman), Scaffold (kerangka dari aplikasinya), AppBar (bagian atas halaman, judul), Column/Row (menyusun widget secara vertikal/horizontal), Padding (beri jarak antar UI), Card (tampilan kotak dengan shadow), Container (wadah untuk ukuran, layout, dll), Icon (menampilkan ikon.), SnackBar (notifikasi di bawah layar), MediaQuery (agar layout responsif sesuai ukuran layar).

3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
Jawab = widget utama aplikasi Flutter, digunakan untuk menentukan tema, warna, style, sama navigasi antar halaman. Karena itu biasanya dipakai sebagai root (paling atas) dalam aplikasi.

4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
Jawab = StatelessWidget, tampilan nggak berubah. StatefulWidget, tampilan bisa berubah seperti ada input, animasi, maupun interaksi dari user.

5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
Jawab = BuildContext itu objek yang menyimpan informasi tentang posisi widget dalam widget tree. Dipakai untuk mengakses parent widget, tema, media query, navigasi, dll. context selalu dipakai di metode build karena di situ UI dibuat berdasarkan posisinya dalam tree.

6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
Jawab = Hot Reload itu mengupdate UI tanpa menghapus state, sedangkan Hot Restart itu harus merestart aplikasi dari awal, state hilang. Intinya kalau mau styling doang hot reload sedangkan kalau ada error atau tampilannya nggak benar hot restart

# Tugas 8 
1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
Jawab = Navigator.push(), digunakan untuk membuka halaman baru sambil tetap menyimpan halaman sebelumnya di stack.
Jadi pengguna masih bisa balik ke halaman sebelumnya dengan tombol back. Sedangkan Navigator.pushReplacement() mengganti halaman sekarang dengan halaman baru dan menghapus halaman lama dari stack. Jadi pengguna nggak bisa balik ke halaman sebelumnya.

2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
Jawab = Scaffold dipakai sebagai kerangka dasar halaman. Kemudian didalamnya ada AppBar untuk judul halaman, dan leftdrawer sebagai menu navigasi antar halaman.

3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
Jawab = Padding digunakan agar setiap elemen tidak menempel satu sama lain sehingga tampilan menjadi lebih rapi dan mudah untuk dibaca. SingleChildScrollView membuat halaman form dapat di scroll ketika kontennya panjang, sehingga tidak terjadi overflow pada layar. Sedangkan ListView/Column digunakan untuk menyusun elemen form secara vertikal agar lebih rapi. Contoh penggunaannya ada di halaman Add Product dimana semua input disusun rapi dan halaman bisa discroll. 

4. Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
Jawab = Warna tema disesuaikan menggunakan tema global pada main.dart dengan mengatur ColorScheme. Dengan cara ini, elemen seperti AppBar, tombol, dan highlight warna akan otomatis mengikuti warna utama yang ditentukan. hal ini membuat tampilan yang konsisten.

# Tugas 8
1. Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
Jawab= Karena model bikin data aman dan rapi, dengan model tipe data menjadi jelas (error ketahuan di compile, bukan pas runtime),null-safety lebih terjamin, perubahan struktur JSON cukup diupdate di satu tempat, dan kode lebih gampang dibaca (todo.title > map['title']). Kalau cuma pakai Map<String, dynamic>, semuanya jadi dynamic, rawan typo, rawan null, dan susah maintenance.

2. Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
Jawab= jika http buat request biasa (GET/POST), tapi nggak simpan cookie atau session. CookieRequest, khusus buat Django yang pakai session & CSRF, otomatis simpan cookie, kirim cookie, dan handle CSRF. Jadi http itu stateless, sedangkan CookieRequest session-based dan aman buat login Django.

3. Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Jawab= Supaya semua halaman pakai session yang sama, kalau tiap widget punya instance sendiri maka login bisa “hilang” pas ganti halaman, cookie nggak konsisten, user dianggap logout di beberapa tempat, makanya CookieRequest biasanya disimpan di Provider dan dishare ke seluruh app.

4. Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
Jawab= 10.0.2.2 di ALLOWED_HOSTS, di Android emulator, alamat 10.0.2.2 itu sebagai sambungan ke laptop, jadi kalau Django jalan di localhost:8000 di laptop, emulator cuma bisa akses lewat http://10.0.2.2:8000 jika 10.0.2.2 nggak ditambah ke ALLOWED_HOSTS, Django akan nolak request dengan error 400 Bad Request. Aktifin CORS, kalau Flutter mengakses server Django dari origin yang beda, request bisa diblock browser. Maka dari itu harus aktifkan CORS (pakai django-cors-headers) dan izinkan origin tertentu atau dibuka semua saat dev jika tidak, browser (atau web build) bakal block request. Atur SameSite/Cookie, kalau nggak diatur cookie session nggak bakal ikut terkirim sehingga login gagal terus. Izin internet Android, tanpa ini aplikasi nggak bisa akses jaringan sama sekali. Kalau salah satu nggak dikonfigurasi, hasilnya request diblock, cookie nggak kesend, Django nolak, atau app tidak bisa connect.

5. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Jawab= User isi form lalu value ditampung Flutter, kemudian Flutter kirim request (JSON) lewat CookieRequest/http. Django terima kemudian validasi request tersebut dan di simpan ke DataBase jika valid, return response JSON. Jika error, return error JSON + status code. Flutter parse JSON tersebut dan masuk ke model. Model disimpan di state lalu widget rebuild dan data tampil. Jika server error, tampilkan pesan ke user.

6. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Jawab= Register, Flutter kirim data kemudian Django bikin user lalu Django kasih cookie session dan CookieRequest simpan.
Login, Flutter kirim username/password kemudian Django cek lalu Django set session cookie dan CookieRequest simpan setelah itu Flutter anggap user logged in.
Logout, Flutter panggil logout lalu Django hapus session kemudian CookieRequest bersihin cookie dan UI kembali ke mode belum login.

7. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
Jawab= Setup autentikasi Django dulu, mulai dari endpoint login, register, dan logout. Kemudian CookieRequest di Flutter lewat Provider biar bisa dipakai bersama di semua halaman. Lalu Bikin model Dart untuk data yang ada dari Django, sehingga parsing JSON-nya lebih aman dan rapi. Implement fetch data dari Django, termasuk product list dan detailnya, kemudian tampilkan di Flutter. Bikin form di Flutter kemudian validasi input dan kirim data ke Django lewat CookieRequest lalu cek apakah Django nyimpan datanya dengan benar. Setup konfigurasi konektivitas, nambahin 10.0.2.2 di ALLOWED_HOSTS, masukan CORS, atur SameSite cookie, dan izin internet untuk Android supaya semua request jalan lancar. Kemudian Implement fitur logout, baik di Django (hapus session) dan di Flutter (hapus state & redirect halaman). Lalu menambahkan fitur filter All dan My product. 