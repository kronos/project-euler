import std.stdio;

int primes[1000];
int primes_count = 1;

int next_prime() {
  int i = primes[primes_count-1];
  bool is_prime = false;

  while (!is_prime) {
    i++;
    foreach(prime; primes[0..primes_count]) {
      is_prime = i % prime != 0;
      if (!is_prime) {
        break;
      }
    }
  }
  primes[primes_count++] = i;
  return i;
}

void main() {
  auto n = 600851475143;
  int current_prime = 2;
  primes[0] = 2;

  while (n != 1) {
    while (n % current_prime == 0) {
      n /= current_prime;
    }

    if (n > 1) {
      current_prime = next_prime();
    }
  }

  writeln(current_prime);
}



// @primes = [2]
//
// def next_prime!
//   i = @primes.last
//   is_prime = false
//
//   while !is_prime
//     i += 1
//     @primes.each do |prime|
//       is_prime = i % prime != 0
//       break unless is_prime
//     end
//   end
//   @primes << i
//   i
// end
//
// current_prime = 2
//
// n = 600851475143
// while n != 1
//   while n % current_prime == 0
//     n /= current_prime
//   end
//
//   current_prime = next_prime! unless n == 1
// end
// p current_prime