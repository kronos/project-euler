import std.stdio, std.math;

void main() {
  auto power_1 = pow((1+100)*50, 2);
  long power_2 = 0;

  foreach(i; 1..101) {
    power_2 += pow(i, 2);
  }

  writeln(power_1 - power_2);
}
