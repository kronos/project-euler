sum = 0
fib1 = fib2 = 1

while fib2 <= 4_000_000
  if fib2 % 2 == 0
    sum += fib2
  end

  fib1, fib2 = fib2, fib1 + fib2
end
p sum