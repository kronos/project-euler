modulo = 10_000_000_000
sum = 10405071317 % modulo
11.upto(1_000) do |i|
  sum = (sum + i**i) % modulo
end

p sum
