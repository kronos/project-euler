import std.stdio;

void main() {
  int sum;
  foreach(i; 3..1000) {
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }
  writeln(sum);
}
