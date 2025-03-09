
int fibbon(int x) {
    if (x <= 0 || x <= 1) {
        return x;
    } else {
        return fibbon(x - 2) + fibbon(x - 1);
    }
}