int fibonacciTail(int n, int a, int b) { 
    if (n == 0) {
        return a; // Base case: jika n = 0, kembalikan nilai pertama
    } else if (n == 1) {
        return b; // Base case: jika n = 1, kembalikan nilai kedua
    }
    return fibonacciTail(n - 1, b, a + b); // Rekursi ekor dengan parameter akumulator
}

int fibonacci(int n) {
    return fibonacciTail(n, 0, 1); // Memulai rekursi dengan nilai awal 0 dan 1
}