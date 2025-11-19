# KickOff Shop

KickOff Shop adalah project Flutter sederhana mengenai toko yang menjual perlengkapan sepak bola. Tugas ini dikerjakan oleh Nezzaluna Azzahra dengan NPM 2406495741 dari kelas PBP-D.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Tugas 7

**Jawaban pertanyaan**

- Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.  
  Widget tree pada Flutter adalah struktur hierarki yang menggambarkan bagaimana widget-widget dalam aplikasi diatur dan saling berhubungan satu sama lain. Setiap widget dalam Flutter dapat memiliki satu atau lebih child widget yang berada di bawahnya dalam hierarki, membentuk sebuah pohon (tree). Hubungan parent-child (induk-anak) bekerja dengan cara parent widget dapat mengandung satu atau lebih child widget, dan widget anak tersebut dapat memiliki properti atau perilaku yang dipengaruhi oleh widget induknya.
- Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.  
  Widget yang saya gunakan dalam proyek ini beserta fungsi dari masing-masing widget tersebut adalah sebagai berikut:

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
  Perbedaan antara StatelessWidget dan StatefulWidget adalah StatelessWidget adalah widget yang tampilannya tidak akan berubah setelah dibuat (immutable), sehingga hanya mengandalkan informasi yang diberikan saat konstruksi dan tidak dapat melacak data atau interaksi user. Sedangkan StatefulWidget adalah widget yang dapat berubah tampilannya selama cycle-nya (mutable) dan dapat melacak data atau interaksi user melalui useran State. useran atau pemilihan StatelessWidget dilakukan ketika membuat widget yang tidak memerlukan perubahan dinamis, seperti teks static atau icon. Sedangkan, useran atau pemilihan StatefulWidget dilakukan ketika membuat widget yang perlu merespons perubahan data atau interaksi user, seperti formulir input, tombol yang dapat ditekan, atau daftar yang dapat diperbarui.
- Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana userannya di metode build?  
  BuildContext adalah sebuah objek yang merupakan handle atau referensi ke lokasi widget dalam widget tree. BuildContext penting di Flutter karena memungkinkan widget untuk mengakses informasi mengenai posisinya dalam hierarki widget, serta untuk berinteraksi dengan widget lainnya. useran BuildContext di metode build memungkinkan widget untuk mendapatkan akses ke data yang dibutuhkan untuk membangun dirinya sendiri, seperti tema, ukuran layar, dan lainnya. Setiap widget memiliki BuildContext sendiri, dan di dalam metode build, context digunakan sebagai argumen untuk memastikan widget tahu di mana posisinya saat membangun tampilannya, sehingga semua interaksi dan pencarian data dapat dilakukan dengan benar.
- Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".  
  Konsep "hot reload" pada Flutter adalah konsep dimana developer dapat melihat perubahan kode secara langsung pada aplikasi yang sedang berjalan tanpa harus memulai ulang atau run ulang aplikasi. Perbedaan "hot reload" dan "hot start" adalah pada "hot reload", aplikasi tetap berjalan dan hanya memperbarui bagian yang diubah, sedangkan pada "hot restart", aplikasi dimulai ulang dari awal sehingga semua state aplikasi akan direset. Selain itu untuk melakukan "hot reload" adalah mengklik "r" pada terminal, sedangkan untuk "hot restart" mengklik "R" pada terminal.
- Jelaskan bagaimana kamu menambahkan navigasi untuk berpindah antar layar di aplikasi Flutter.  
  Cara untuk menambahkan navigasi untuk berpindah antar layar di aplikasi Flutter dapat dilakukan dengan menggunakan widget Navigator. Navigator menggunakan konsep stack untuk mengelola layar-layar aplikasi. Untuk berpindah ke layar baru, dapat menggunakan "Navigator.push()" sehingga menambahkan layar baru ke atas stack. Sedangkan untuk kembali ke layar sebelumnya, dapat menggunakan metode "Navigator.pop()" sehingga menghapus layar teratas dari stack. Selain itu, navigasi dapat dilakukan dengan menggunakan named routes untuk navigasi yang lebih terstruktur.

## Tugas 8

**Jawaban pertanyaan**

- Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?  
  Perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter adalah Navigator.push() adalah metode untuk menambahkan layar baru ke atas stack navigasi tanpa menghapus layar sebelumnya, sehingga user dapat kembali ke layar sebelumnya dengan menggunakan Navigator.pop(). Sedangkan Navigator.pushReplacement() digunakan untuk menggantikan layar saat ini dengan layar baru, sehingga layar sebelumnya dihapus dari stack dan user tidak dapat kembali ke layar tersebut. Dalam kasus aplikasi saya, KickOff Shop, saya menggunakan Navigator.push() ketika user ingin menavigasi ke halaman product form untuk membuat product baru, sehingga mereka dapat kembali ke halaman sebelumnya setelah selesai. Sedangkan saya menggunakan Navigator.pushReplacement() ketika mengklik Home pada left drawer untuk navigasi ke halaman utama, sehingga user tidak perlu kembali ke halaman sebelumnya.
- Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?  
  Saya memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer dengan menggunakan Scaffold sebagai kerangka utama atau layout utama dari Appbar dan Drawer di setiap halaman aplikasi. Kemudian Appbar digunakan untuk menampilkan judul halaman dan tindakan penting di bagian atas layar. Kemudian Drawer digunakan untuk menyediakan navigasi antar halaman. Dengan cara ini, saya dapat membangun struktur halaman yang konsisten di seluruh aplikasi dengan cara menggunakan Scaffold sebagai kerangka utama setiap halaman. Scaffold menyediakan struktur dasar yang mencakup AppBar di bagian atas untuk menampilkan judul halaman dan tindakan penting, serta Drawer di sisi kiri untuk navigasi antar halaman. Dengan menggunakan struktur ini secara konsisten di setiap halaman, user dapat dengan mudah mengenali dan menavigasi aplikasi Football Shop, sehingga menciptakan pengalaman user yang lebih baik dan terstruktur.
- Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.  
  Kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form adalah memberikan fleksibilitas dalam pengaturan tata letak dan memastikan elemen-elemen form dapat diakses dengan baik oleh user. Padding memungkinkan penambahan ruang di sekitar elemen form untuk meningkatkan keterbacaan dan estetika, SingleChildScrollView memungkinkan konten form yang panjang untuk digulir, sehingga user dapat mengakses semua elemen tanpa terpotong, sedangkan ListView memungkinkan penataan elemen form dalam daftar yang dapat digulir secara vertikal, memudahkan navigasi antar elemen. Contoh penggunaannya dalam aplikasi saya adalah pada halaman pembuatan produk, di mana saya menggunakan Padding untuk memberikan jarak antara label dan input field, SingleChildScrollView untuk memastikan seluruh form dapat disesuaikan jika melebihi tinggi layar, dan ListView untuk menampilkan daftar input field secara terstruktur.
- Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?  
  Saya menyesuaikan warna tema agar aplikasi KickOff Shop memiliki identitas visual yang konsisten dengan brand toko dengan cara mengubah properti colorScheme pada main.dart agar sesuai dengan tema warna aplikasi website KickOff Shop saya di project Django sebelumnya. Saya memilih warna primer dan sekunder yang sesuai dengan identitas visual KickOff Shop sebelumnya, saya membuat warna biru untuk warna primer dan biru aksen untuk warna sekunder pada main.dart. Dengan cara ini, seluruh elemen dalam aplikasi akan mengikuti skema warna yang telah ditentukan, sehingga menciptakan konsistensi visual yang mencerminkan brand toko KickOff Shop.

## Tugas 8

**Langkah-Langkah Implementasi**

- Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.  
  Membuat app authentication pada project Django dan membuat fungsi login, logout dan register. Kemudian membuat fungsi pada app main untuk create product flutter dan proxy-image. Kemudian push ke repo dan push ke pws.
- Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.  
  Membuat fungsi registrasi pada Flutter dengan membuat halaman register yang terhubung ke endpoint register di Django. Kemudian pada Flutter, membuat form registrasi yang mengirim data ke Django.
- Membuat halaman login pada proyek tugas Flutter.  
  Membuat fungsi login pada Flutter dengan membuat halaman login yang terhubung ke endpoint login di Django. Kemudian pada Flutter, membuat form login yang mengirim data ke Django.
- Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.  
  Menggunakan package cookie_jar dan http untuk mengelola sesi autentikasi antara Flutter dan Django. Membuat instance CookieRequest yang menyimpan cookie sesi setelah login berhasil, sehingga dapat digunakan untuk permintaan selanjutnya.
- Membuat model kustom sesuai dengan proyek aplikasi Django.  
  Melakukan runserver pada project Django, menyalin data dalam bentuk JSON dan memasukkannya ke website QuickType untuk memgubah modelnya menjadi Dart. Kemudian model Dart ProductEntry yang telah dibuat dan sesuai dengan struktur data Product pada Django, dengan atribut seperti id, name, description, thumbnail, category, isFeatured, rating, price, dan stock.
- Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.  
  Membuat halaman ProductEntryListPage yang menampilkan daftar produk dengan mengambil data dari endpoint JSON di Django. Menggunakan FutureBuilder untuk menampilkan data secara asinkron dan GridView untuk menampilkan produk dalam format grid.
- Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.  
  Membuat halaman ProductEntryDetailPage yang menampilkan detail produk ketika user mengetuk salah satu produk pada halaman daftar. Halaman ini menampilkan informasi lengkap tentang produk, termasuk nama, deskripsi, gambar, kategori, status fitur, rating, harga, dan stok.
- Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.  
  Membuat fungsi baru di views.py pada Django untuk memfilter produk berdasarkan pengguna yang login. Kemudian pada Flutter, membuat parameter baru pada ProductEntryListPage untuk menerima json yang sudah difilter berdasarkan user yang login.

**Jawaban pertanyaan**

- Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?  
  Kita perlu membuat model Dart saat mengambil/mengirim data JSON karena kita perlu memastikan bahwa data yang diterima atau dikirim sesuai dengan struktur data yang diharapkan dan sesuai dengan model yang sudah dibuat di project Django. Jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, mull-safety, maintainability), maka akan susah untuk memastikan data yang diterima atau dikirim sesuai dengan tipe data yang diharapkan, sehingga dapat menyebabkan runtime error, selain itu akan susah dalam pemeliharaan kode karena tidak ada struktur yang jelas dan konsisten untuk data yang digunakan.
- Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.  
  Fungsi package http dan CookieRequest dalam tugas ini adalah http digunakan untuk melakukan request HTTP ke server, sedangkan CookieRequest digunakan untuk mengelola session untuk autentikasi dengan menyimpan session cookie yang diterima dari server setelah login berhasil. Perbedaan peran http dan CookieRequest adalah http hanya digunakan untuk melakukan request HTTP dan tidak menyimpan session, sedangkan CookieRequest menyimpan session cookie sehingga dapat digunakan untuk request selanjutnya yang memerlukan autentikasi.
- Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.  
  Instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter karena instance CookieRequest menyimpan session cookie yang diperlukan untuk autentikasi user. Apabila instance CookieRequest tidak dibagi ke semua komponen, maka komponen-komponen tersebut tidak akan memiliki akses ke session cookie yang diperlukan untuk melakukan request yang memerlukan autentikasi, sehingga user tidak dapat mengakses data yang dilindungi.
- Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?  
  Konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android karena karena 10.0.2.2 adalah alamat IP khusus yang digunakan oleh emulator Android untuk mengakses localhost pada host machine, kemudian dengan mengaktifkan CORS dan pengaturan Samesite/cookie dilakukan karena Flutter dan Django berjalan pada domain yang berbeda, sehingga perlu mengizinkan request dari domain Flutter ke Django, kemudian menambahkan izin akses internet di Android diperlukan karena app Flutter perlu akses internet untuk komunikasi dengan server dari Django. Yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar adalah Flutter tidak dapat berkomunikasi dengan Django, sehingga app tidak dapat mengambil atau mengirim data ke server.
- Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.  
  Mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter adalah user memasukkan data pada form di app FLutter, kemudian data tersebut dikirim ke endpoint di Django menggunakan request HTTP, setelah itu Django memroses data yang diterima dan menyimpannya ke database, kemudian ketika app Flutter melakukan request untuk mengambil data, Django mengirimkan data dalam format JSON ke Flutter, kemudian Flutter menerima data JSON tersebut dan memetakan data ke model Dart yang telah dibuat, sehingga data dapat ditampilkan pada app Flutter.
- Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.  
  Mekanisme autentikas dari login, register, hingga logout adalah user memasukkan data akun pada form di app Flutter, kemudian data tersebut dikirim ke endpoint register atau login di Django menggunakan request HTTP, setelah itu Django memroses data yang diterima, pada proses register Django akan membuat akun baru dan menyimpan ke database, sedangkan proses login Django akan verifikasi data akun yang diterima, jika data akun valid Django akan membuat session dan mengirimkan session cookie ke Flutter, kemudian Flutter menyimpan session cookie tersebut menggunakan instance CookieRequest, sehingga dapat digunakan untuk request selanjutnya yang memerlukan autentikasi. Ketika user melakukan logout, Flutter mengirim request ke endpoint logout di Django, kemudian Django menghapus session yang terkait dengan user tersebut, sehingga user tidak dapat mengakses data yang dilindungi lagi. Setelah proses autentikasi selesai, menu pada Flutter akan menyesuaikan dengan status autentikasi user.
