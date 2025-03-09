import 'dart:io';

int ambilNilaiRekursif(int number, int index) {
    if (index == 1) {
        return 1;
    } else if (number % index == 0) {
        return 1 + ambilNilaiRekursif(number, --index);
    } else {
        return 0 + ambilNilaiRekursif(number, --index);
    }
}

bool cekBilanganPrima(int num) {
    if (num > 1) {
        return (ambilNilaiRekursif(num, num) == 2);
    } else {
        return false;
    }
}
