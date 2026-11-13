
import 'package:flutter/material.dart';

// Titik awal aplikasi Flutter.
void main() {
  runApp(const MyApp());
}

// Widget utama untuk mengatur tema aplikasi.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabungKu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.pink.shade50,
        useMaterial3: true,
      ),
      home: const RingkasanPage(),
    );
  }
}

// Model sederhana untuk menyimpan data transaksi.
class Transaksi {
  final String judul;
  final String tanggal;
  final String nominal;
  final bool pemasukan;

  const Transaksi({
    required this.judul,
    required this.tanggal,
    required this.nominal,
    required this.pemasukan,
  });
}

// Halaman utama untuk menampilkan ringkasan tabungan.
class RingkasanPage extends StatelessWidget {
  const RingkasanPage({super.key});

  // Data transaksi statis (hard-code).
  static const List<Transaksi> daftarTransaksi = [
    Transaksi(
      judul: 'Menabung Mingguan',
      tanggal: '12 November 2026',
      nominal: '+ Rp 200.000',
      pemasukan: true,
    ),
    Transaksi(
      judul: 'Tarik Tabungan',
      tanggal: '10 November 2026',
      nominal: '- Rp 50.000',
      pemasukan: false,
    ),
    Transaksi(
      judul: 'Menabung Harian',
      tanggal: '8 November 2026',
      nominal: '+ Rp 300.000',
      pemasukan: true,
    ),
    Transaksi(
      judul: 'Tabungan Awal',
      tanggal: '5 November 2026',
      nominal: '+ Rp 400.000',
      pemasukan: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar dengan warna pink.
      appBar: AppBar(
        title: const Text(
          'Ringkasan Tabungan',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink.shade600,
        foregroundColor: Colors.white,
      ),

      // ListView agar halaman bisa di-scroll.
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          // Judul pembuka halaman.
          Text(
            'Selamat Datang di TabungKu!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.pink.shade800,
            ),
          ),

          const SizedBox(height: 6),

          const Text(
            'Pantau perkembangan tabungan kamu di sini.',
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 20),

          // Card utama berwarna pink.
          Card(
            color: Colors.pink.shade600,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),

              // Column untuk menyusun informasi tabungan.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tabungan Pribadi',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Row untuk membagi saldo dan target.
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Informasi saldo saat ini.
                      const Expanded(
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Saldo Saat Ini',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Rp 850.000',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 12),

                      // Informasi target tabungan.
                      const Expanded(
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Target Tabungan',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Rp 2.000.000',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 24),

          // Judul bagian kategori.
          Text(
            'Kategori',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.pink.shade800,
            ),
          ),

          const SizedBox(height: 12),

          // Row berisi tiga kategori tabungan.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              // Kategori Menabung.
              Expanded(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.pink.shade100,
                      child: Icon(
                        Icons.savings,
                        color: Colors.pink.shade700,
                        size: 28,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Menabung',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),

              // Kategori Tarik.
              Expanded(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.pink.shade200,
                      child: Icon(
                        Icons.account_balance_wallet,
                        color: Colors.pink.shade800,
                        size: 28,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Tarik',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),

              // Kategori Riwayat.
              Expanded(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.pink.shade100,
                      child: Icon(
                        Icons.history,
                        color: Colors.pink.shade600,
                        size: 28,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Riwayat',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 28),

          // Judul daftar transaksi.
          Text(
            'Transaksi Terbaru',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.pink.shade800,
            ),
          ),

          const SizedBox(height: 12),

          // Menampilkan transaksi dari daftar statis.
          for (final transaksi in daftarTransaksi)
            Card(
              margin: const EdgeInsets.only(bottom: 10),
              elevation: 1,
              color: Colors.white,
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),

                // Ikon transaksi berdasarkan jenisnya.
                leading: CircleAvatar(
                  backgroundColor: transaksi.pemasukan
                      ? Colors.green.shade100
                      : Colors.red.shade100,
                  child: Icon(
                    transaksi.pemasukan
                        ? Icons.arrow_downward
                        : Icons.arrow_upward,
                    color: transaksi.pemasukan
                        ? Colors.green
                        : Colors.red,
                  ),
                ),

                // Judul transaksi.
                title: Text(
                  transaksi.judul,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),

                // Tanggal transaksi.
                subtitle: Text(
                  transaksi.tanggal,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                  ),
                ),

                // Nominal transaksi di sebelah kanan.
                trailing: Text(
                  transaksi.nominal,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: transaksi.pemasukan
                        ? Colors.green
                        : Colors.red,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
