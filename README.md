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