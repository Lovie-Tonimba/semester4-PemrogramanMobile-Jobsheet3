import 'dart:io';
import 'menu.dart';

void main() {
  while (true) {
  daftarMenu();

  stdout.write("Pilih menu (1-6): ");
  String? input = stdin.readLineSync();

    if (input == '1' || input == '2' || input == '3' || input == '4') {

    } else if (input == '5') {

    } else if (input == '6') {
      print("Terima kasih sudah mampir yaa..");
      break; 
    } else {
      print("Input tidak valid, masukkan angka 1 sampai 6!");
    }
  }
}