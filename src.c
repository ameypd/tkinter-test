int main() {
    int a = 10;
    int b = 20;
    float c = 20.345;
    double d = 32.3222233453;
    int i = 0;

    while (i <= 10000) {
        a = a+b;
        b = b+i;
        d = d*c;
        c = c/a;
    }

    return 0;
}