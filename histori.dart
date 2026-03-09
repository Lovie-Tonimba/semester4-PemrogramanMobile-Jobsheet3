List<String> riwayatPesanan = [];

void tambahRiwayat(String data) {
  riwayatPesanan.add(data);
}

void transaksiHistori() {
  print('\n--- RIWAYAT TRANSAKSI ---');
  
  if (riwayatPesanan.isEmpty) {
    print('Belum ada pesanan yang lunas');
  } else {
    for (int i = 0; i < riwayatPesanan.length; i++) {
      print('${i + 1} = ${riwayatPesanan[i]}');
    }
  }
}