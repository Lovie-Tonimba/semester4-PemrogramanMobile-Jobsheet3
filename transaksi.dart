import 'dart:io';
import 'histori.dart';

void prosesPembayaran(String nomorMenu, int harga) {
  String namaMenu = "";
  if (nomorMenu == '1') {
    namaMenu = "Nasi Goreng";
  } else if (nomorMenu == '2') {
    namaMenu = "Nasi Ayam Geprek";
  } else if (nomorMenu == '3') {
    namaMenu = "Es Teh";
  } else if (nomorMenu == '4') {
    namaMenu = 'Es Jeruk';
  }

  stdout.write("Berapa porsi $namaMenu yang ingin dibeli? ");
  int porsi = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  if (porsi > 0) {
    int totalHarga = harga * porsi;
    print("Total Bayar: Rp $totalHarga");

    stdout.write("Silahkan bayar: Rp ");
    int uangBayar = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

    if (uangBayar < totalHarga) {
      print("Transaksi Gagal. Uang kurang Rp ${totalHarga - uangBayar}");
    } else {
      int kembalian = uangBayar - totalHarga;
      print("TRANSAKSI BERHASIL");
      print("Kembalian: Rp $kembalian");

      tambahRiwayat("$namaMenu ($porsi porsi) - Rp $totalHarga (Lunas)");
    }
  } else {
    print("Jumlah porsi harus lebih dari 0");
  }
}