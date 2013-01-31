sum = 28
num = 7
div_count = 0

while div_count <= 500
  num += 1
  sum += num
  div_count = 2
  i = 2

  while i*i < sum
    div_count += 2 if sum % i == 0
    i += 1
  end
end

p sum
