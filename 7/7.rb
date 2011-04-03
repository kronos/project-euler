# you can use here mathn lib, but I won't

@primes = [2]
n = 0

while n != 10000
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
  n += 1
end
p @primes.last