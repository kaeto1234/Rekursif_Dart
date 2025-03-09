import 'dart:io';
import '../../lib/models/latihan/kombinasi.dart';
import '../../lib/models/latihan/binarySearch.dart';

void main() {
  Kombinasi kombinasi = Kombinasi();
  BinarySearch binarySearch = BinarySearch();

  while (true) {
    print("\n===== Pilih Program =====");
    print("1. Kombinasi Karakter");
    print("2. Binary Search");
    print("3. Keluar");

    stdout.write("Masukkan pilihan (1 - 3): ");
    int pilihan = int.parse(stdin.readLineSync()!);

    if (pilihan == 1) {

      print("\nMenampilkan Kombinasi Karakter:");
      stdout.write("Masukkan jumlah karakter: ");
      int n = int.parse(stdin.readLineSync()!);
      String chars = "abc";
      kombinasi.generate("", n, chars); 

    } else if (pilihan == 2) {

      print("\nMenjalankan Binary Search:");
      List<int> data = [2, 5, 8, 10, 14, 32, 35, 41, 67, 88, 90, 101, 109];
      stdout.write("Masukkan angka yang dicari: ");
      int target = int.parse(stdin.readLineSync()!);
      int result = binarySearch.search(data, 0, data.length - 1, target);

      if (result != -1) {
        print("Data $target berada pada indeks ke-$result");
      } else {
        print("Data tidak ditemukan.");
      }

    } else if (pilihan == 3) {
      print("Keluar dari program...");
      break;

    }  else {
      print("Pilihan tidak valid!");
    }
  }
}
