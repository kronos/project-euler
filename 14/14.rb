@hash = Hash.new { |h, k| h[k] = 0 }
@num = @max = @hash[1] = 1

def rec(n)
  @hash[n] = 1 + (n % 2 == 0 ? rec(n/2) : rec(3*n + 1)) if @hash[n] == 0
  @hash[n]
end

2.upto(999_999) do |i|
  r = @hash[i] == 0 ? rec(i) : @hash[i]
  if @max < r
    @max = r
    @num = i
  end
end

p @num
