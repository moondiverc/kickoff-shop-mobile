# KickOff Shop

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Tugas 5

**Jawaban pertanyaan**

- Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.  
Widget tree pada Flutter adalah struktur hierarki yang menggambarkan bagaimana widget-widget dalam aplikasi diatur dan saling berhubungan satu sama lain. Setiap widget dalam Flutter dapat memiliki satu atau lebih child widget yang berada di bawahnya dalam hierarki, membentuk sebuah pohon (tree). Hubungan parent-child (induk-anak) bekerja dengan cara parent widget dapat mengandung satu atau lebih child widget, dan widget anak tersebut dapat memiliki properti atau perilaku yang dipengaruhi oleh widget induknya.
- Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.  
Widget yang saya gunakan dalam proyek ini diantaranya adalah MaterialApp, Scaffold, AppBar, Drawer, ListView, ListTile, Icon, Text, Center, Column, ElevatedButton, dan lainnya. Fungsi dari masing-masing widget tersebut adalah sebagai berikut:  
  - MaterialApp: Sebagai root widget yang menyediakan struktur dasar aplikasi dengan desain Material.  
  - Scaffold: Menyediakan struktur dasar untuk halaman aplikasi, termasuk AppBar, Drawer, dan body.  
  - AppBar: Menampilkan bilah aplikasi di bagian atas layar dengan judul dan tindakan.  
  - StatelessWidget: Widget yang tidak memiliki state dan tampilannya tetap.
  - ThemeData: Mengatur tema visual aplikasi seperti warna dan font.
  - ColorScheme: Mengelola skema warna aplikasi.
  - Text: Menampilkan teks di layar.
  - TextStyle: Mengatur gaya teks seperti ukuran, warna, dan font.
  - Center: Menempatkan child widget di tengah layar.
  - Column: Mengatur child widget secara vertikal.
  - Row: Mengatur child widget secara horizontal.
  - Padding: Memberikan ruang kosong di sekitar widget.
  - SizedBox: Memberikan ruang kosong dengan ukuran tertentu.
  - GridView.count: Menampilkan daftar widget dalam bentuk grid dengan jumlah kolom tertentu.
  - Card: Menampilkan konten dalam bentuk kartu dengan bayangan.
  - Container: Widget serbaguna untuk mengatur layout, dekorasi, dan posisi child widget.
  - Icon: Menampilkan ikon grafis.
  - Material: Memberikan efek material seperti ripple pada interaksi.
  - InkWell: Menangani interaksi sentuhan dengan efek visual.
  - ScaffoldMessenger: Menampilkan pesan sementara di layar.
  - SnackBar: Menampilkan pesan singkat di bagian bawah layar.

- Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.  
Fungsi dari widget MaterialApp adalah untuk menyediakan struktur dasar dan konfigurasi dasar untuk aplikasi Flutter yang mengikuti desain Material Design. Widget ini mengatur elemen-elemen tingkat tinggi seperti tema, judul, navigasi, dan lainnya. Widget ini sering digunakan sebagai widget root karena menyediakan banyak fitur penting yang diperlukan untuk membangun aplikasi yang konsisten dengan pedoman desain Material, sehingga memudahkan pengembangan aplikasi dengan tampilan yang terstruktur.
- Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?  
Perbedaan antara StatelessWidget dan StatefulWidget adalah StatelessWidget adalah widget yang tampilannya tidak akan berubah setelah dibuat (immutable), sehingga hanya mengandalkan informasi yang diberikan saat konstruksi dan tidak dapat melacak data atau interaksi pengguna. Sedangkan StatefulWidget adalah widget yang dapat berubah tampilannya selama cycle-nya (mutable) dan dapat melacak data atau interaksi pengguna melalui penggunaan State. Penggunaan atau pemilihan StatelessWidget dilakukan ketika membuat widget yang tidak memerlukan perubahan dinamis, seperti teks static atau icon. Sedangkan, penggunaan atau pemilihan StatefulWidget dilakukan ketika membuat widget yang perlu merespons perubahan data atau interaksi pengguna, seperti formulir input, tombol yang dapat ditekan, atau daftar yang dapat diperbarui.
- Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?  
BuildContext adalah sebuah objek yang merupakan handle atau referensi ke lokasi widget dalam widget tree. BuildContext penting di Flutter karena memungkinkan widget untuk mengakses informasi mengenai posisinya dalam hierarki widget, serta untuk berinteraksi dengan widget lainnya. Penggunaan BuildContext di metode build memungkinkan widget untuk mendapatkan akses ke data yang dibutuhkan untuk membangun dirinya sendiri, seperti tema, ukuran layar, dan lainnya. Setiap widget memiliki BuildContext sendiri, dan di dalam metode build, context digunakan sebagai argumen untuk memastikan widget tahu di mana posisinya saat membangun tampilannya, sehingga semua interaksi dan pencarian data dapat dilakukan dengan benar.
- Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".  
Konsep "hot reload" pada Flutter adalah konsep dimana developer dapat melihat perubahan kode secara langsung pada aplikasi yang sedang berjalan tanpa harus memulai ulang atau run ulang aplikasi. Perbedaan "hot reload" dan "hot start" adalah pada "hot reload", aplikasi tetap berjalan dan hanya memperbarui bagian yang diubah, sedangkan pada "hot restart", aplikasi dimulai ulang dari awal sehingga semua state aplikasi akan direset. Selain itu untuk melakukan "hot reload" adalah mengklik "r" pada terminal, sedangkan untuk "hot restart" mengklik "R" pada terminal.
- Jelaskan bagaimana kamu menambahkan navigasi untuk berpindah antar layar di aplikasi Flutter.  
Cara untuk menambahkan navigasi untuk berpindah antar layar di aplikasi Flutter dapat dilakukan dengan menggunakan widget Navigator. Navigator menggunakan konsep stack untuk mengelola layar-layar aplikasi. Untuk berpindah ke layar baru, dapat menggunakan "Navigator.push()" sehingga menambahkan layar baru ke atas stack. Sedangkan untuk kembali ke layar sebelumnya, dapat menggunakan metode "Navigator.pop()" sehingga menghapus layar teratas dari stack. Selain itu, navigasi dapat dilakukan dengan menggunakan named routes untuk navigasi yang lebih terstruktur.