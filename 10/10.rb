primes = [2]

i = 3
while i < 2_000_000
  is_prime = true
  primes.each do |p|
    is_prime = i%p != 0
    break unless is_prime
  end
  primes << i if is_prime
  i += 2
end

p primes.inject(&:+)
