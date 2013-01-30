num = (1..100).inject(&:*)

sum = 0
while num > 0
  sum += num % 10
  num /=10
end

p sum
