import 'dart:io';

int pangkatrekursif(int x, int y) {
    
    if (y == 0) {
        return 1;
    } else {
        return x * pangkatrekursif(x, y - 1);
    }
}