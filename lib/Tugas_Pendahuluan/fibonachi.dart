void fibonacci(int n) {
  int fibo = 0, f1 = 1, f2 = 1; 
  if (n == 1 || n == 2) {
    print(1);
  } else {
    for (int i = 2; i <= n; i++) { 
    fibo = f1 + f2;
    f1 = f2; f2 = fibo;
    }
    print(fibo);
  }
}