import 'dart:io';
import '../lib/models/factorial.dart';
import '../lib/models/fibonachi.dart';
import '../lib/models/bilPrima.dart';
import '../lib/models/kombinasiKarakter.dart';
import '../lib/models/pangkat.dart';
import '../lib/models/menampilkanI.dart';
import '../lib/models/faktorialTail.dart';
import '../lib/models/fibonachiTail.dart';

void main() {

   while (true) {
    print("\n===== Pilih Program =====");
    print("1. Faktorial (Rekursif)");
    print("2. Fibonachi (Rekursif)");
    print("3. Prima atau bukan Prima");
    print("4. Kombinasi 2 Karakter");
    print("5. Menghitung pangkat");
    print("6. Menampilkan nilai i");
    print("7. Faktorial (Rekursif Tail)");
    print("8. Fibonachi (Rekursif Tail)");
    print("9. keluar");

    stdout.write("Masukkan pilihan (1 - 9): ");
    int pilihan = int.parse(stdin.readLineSync()!);

    if (pilihan == 1) {
     print("\nMenjalankan Faktorial dengan metode Rekursif:\n");

     stdout.write("N = ");
     int n = int.parse(stdin.readLineSync()!);
     print("Hasil = ${faktorial(n)}");
     
    } 

    else if (pilihan == 2) {
      print("\nMenjalankan Fibonachi dengan metode Rekursif:\n");

      int n = 10;
      for (int i = 0; i < n; i++) {
        print("f$i = ${fibbon(i)}");
      }
    } 

    else if (pilihan == 3) {
      print("\nMenentukan Bilangan prima atau bukan prima:\n");

      stdout.write("Masukkan bilangan nya : ");
      int num = int.parse(stdin.readLineSync()!);

      if (cekBilanganPrima(num)) {
        print("Bilangan Prima");
      } else {
        print("Bukan Bilangan Prima");
      }
    } 

    else if (pilihan == 4) {
      print("\nMenampilkan kombinasi 2 karakter:\n");

      charCombination("", 2);
    } 

    else if (pilihan == 5) {
      print("\nMenghitung pangkat:\n");

      stdout.write("Bilangan x pangkat y : \n");
      stdout.write("Bilangan x : ");

      int x = int.parse(stdin.readLineSync()!);
      stdout.write("Bilangan y : ");
      
      int y = int.parse(stdin.readLineSync()!);
      print('$x dipangkatkan $y = ${pangkatrekursif(x, y)}');
    } 

    else if (pilihan == 6) {
      print("\nMenampilkan nilai i:\n");

      stdout.write("Masukkan nilai i: ");
      int i = int.parse(stdin.readLineSync()!);
      tail(i);
    } 

    else if (pilihan == 7) {
      print("\nMenjalankan Faktorial dengan metode Rekursif Tail:\n");

      int result = fact(5);
      print('Faktorial: $result');
    } 

    else if (pilihan == 8) {
      print("\nMenjalankan Fibonachi dengan metode Rekursif Tail:\n");

      int result = fib(5);
      print('Deret Fibonacci: $result');
    } 

    else if (pilihan == 9) {
      print("Keluar dari program...");
      break;
    } 

    else {
      print("Pilihan tidak valid!");
    }

  }
}