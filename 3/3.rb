@primes = [2]

def next_prime!
  i = @primes.last
  is_prime = false

  while !is_prime
    i += 1
    @primes.each do |prime|
      is_prime = i % prime != 0
      break unless is_prime
    end
  end
  @primes << i
  i
end

current_prime = 2

n = 600851475143
while n != 1
  while n % current_prime == 0
    n /= current_prime
  end

  current_prime = next_prime! unless n == 1
end
p current_prime