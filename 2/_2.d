import std.stdio;

void main() {
  int sum;
  int fib1;
  int fib2;
  fib2 = fib1 = 1;
  while(fib2 <= 4_000_000) {
    if (fib2 % 2 == 0) {
      sum += fib2;
    }
    fib2 += fib1;
    fib1 = fib2-fib1;
  }
  writeln(sum);
}
