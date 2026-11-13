# TabungKu - Ringkasan Tabungan

**Nama:** DIMAS ANUGRAH SAPUTRA  
**NIM:** 20240801064

---

## 1. Deskripsi Aplikasi

**TabungKu** adalah aplikasi mobile sederhana yang dibuat menggunakan Flutter dan bahasa pemrograman Dart. Aplikasi ini dirancang untuk menampilkan informasi ringkasan tabungan pribadi melalui antarmuka yang sederhana, rapi, dan mudah dipahami.

Proyek ini dibuat sebagai tugas praktikum Flutter dengan fokus pada penerapan widget dasar, penyusunan layout, serta pengaturan tampilan yang responsif pada perangkat smartphone dan tablet.

Aplikasi menggunakan tema warna pink dan menampilkan informasi tabungan serta daftar transaksi dengan data statis (*hard-coded*).

## 2. Fitur Aplikasi

Aplikasi TabungKu memiliki beberapa komponen utama:

1. **Ringkasan Tabungan**  
   Menampilkan nama tabungan, saldo saat ini sebesar Rp 850.000, dan target tabungan sebesar Rp 2.000.000 dalam sebuah Card.

2. **Kategori Tabungan**  
   Menampilkan tiga kategori berupa ikon Menabung, Tarik, dan Riwayat. Ketiganya merupakan elemen tampilan dan belum memiliki fungsi interaktif.

3. **Daftar Transaksi**  
   Menampilkan empat transaksi yang terdiri dari judul transaksi, tanggal, dan nominal uang. Nominal berwarna hijau menunjukkan uang masuk, sedangkan warna merah menunjukkan uang keluar.

4. **Tampilan Responsif**  
   Menggunakan pengaturan layout agar informasi dapat ditampilkan pada layar smartphone maupun tablet serta mendukung scrolling untuk menghindari overflow vertikal.

## 3. Teknologi yang Digunakan

- **Flutter:** Framework untuk membangun antarmuka aplikasi.
- **Dart:** Bahasa pemrograman yang digunakan.
- **Android Studio:** IDE untuk mengembangkan dan menjalankan aplikasi.
- **Material Design:** Komponen antarmuka bawaan Flutter.

Proyek ini tidak menggunakan GetX, Provider, maupun paket pihak ketiga.

## 4. Widget Flutter yang Digunakan

Widget utama yang digunakan dalam aplikasi:

| Widget | Fungsi |
|---|---|
| MaterialApp | Mengatur aplikasi dan tema |
| Scaffold | Membentuk struktur halaman |
| AppBar | Menampilkan judul halaman |
| Card | Menampilkan informasi dalam bentuk kartu |
| Column | Menyusun elemen secara vertikal |
| Row | Menyusun elemen secara horizontal |
| Padding | Mengatur jarak antar elemen |
| Expanded | Membagi ruang secara fleksibel |
| SizedBox | Memberikan jarak antar widget |
| ListView | Menampilkan konten yang dapat di-scroll |
| ListTile | Menampilkan informasi transaksi |
| CircleAvatar | Menampilkan ikon dalam bentuk lingkaran |
| Icon | Menampilkan simbol kategori dan transaksi |
| Text | Menampilkan informasi teks |

## 5. Struktur Proyek

```text
tabungku_layout/
├── android/
├── ios/
├── lib/
│   └── main.dart
├── linux/
├── macos/
├── test/
├── web/
├── windows/
├── pubspec.yaml
└── README.md
```

Seluruh implementasi antarmuka dan data transaksi berada pada file `lib/main.dart`.

## 6. Cara Menjalankan Aplikasi

### Persyaratan

Pastikan perangkat sudah memiliki:

- Flutter SDK
- Dart SDK (tersedia bersama Flutter)
- Android Studio
- Android SDK
- Emulator Android atau perangkat Android fisik

### Langkah 1 — Membuka Proyek

Buka Android Studio, pilih **Open**, kemudian arahkan ke folder proyek `tabungku_layout`.

### Langkah 2 — Memeriksa Flutter

Buka terminal Android Studio dan jalankan:

```bash
flutter doctor
```

Pastikan instalasi Flutter dan Android toolchain siap digunakan.

### Langkah 3 — Mengambil Dependensi

Jalankan perintah:

```bash
flutter pub get
```

Perintah ini mengambil dependensi yang diperlukan oleh proyek Flutter.

### Langkah 4 — Menjalankan Emulator

1. Buka **Device Manager** di Android Studio.
2. Pilih emulator Android yang tersedia, misalnya Pixel 8 atau Pixel Tablet.
3. Klik tombol Play untuk mengaktifkan emulator.
4. Tunggu hingga perangkat siap digunakan.

### Langkah 5 — Menjalankan Aplikasi

Jalankan melalui tombol **Run** di Android Studio atau gunakan terminal:

```bash
flutter run
```

Aplikasi akan menampilkan halaman **Ringkasan Tabungan** dengan informasi saldo, target, kategori, dan transaksi terbaru.

### Langkah 6 — Memeriksa Kode

Untuk memeriksa masalah analisis statis, gunakan:

```bash
flutter analyze
```

## 7. Pengujian Tampilan

Pengujian dilakukan dengan menjalankan aplikasi pada dua ukuran layar berbeda.

| Perangkat | Tujuan Pengujian |
|---|---|
| Pixel 8 (Smartphone) | Memastikan layout sesuai dengan layar ponsel |
| Pixel Tablet | Memastikan layout dapat ditampilkan pada layar tablet |

Aspek yang diperiksa meliputi susunan Card, posisi Row dan Column, keterbacaan teks, daftar transaksi, serta kemungkinan terjadinya overflow.

Screenshot hasil pengujian pada kedua perangkat dilampirkan sebagai dokumentasi tugas.

## 8. Kesimpulan

Melalui pembuatan aplikasi TabungKu, konsep dasar penyusunan antarmuka Flutter dapat diterapkan menggunakan widget seperti Scaffold, Card, Column, Row, Padding, Expanded, dan ListView.

Aplikasi ini berfokus pada tampilan ringkasan tabungan dengan data statis, sehingga belum dilengkapi fitur untuk menambahkan, mengubah, atau menghapus transaksi secara langsung.

Proyek ini menunjukkan penerapan layout Flutter menggunakan widget dasar tanpa memerlukan paket pihak ketiga.