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