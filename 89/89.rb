ROMAN_TO_ARABIC = {
  "I" => 1,
  "V" => 5,
  "X" => 10,
  "L" => 50,
  "C" => 100,
  "D" => 500,
  "M" => 1000,
}

ROMAN = ROMAN_TO_ARABIC.keys

def to_roman(number)
  return "-#{to_roman(-number)}" if number < 0
  if number > 3999
    return "M"*(number / 1000 - 3) + to_roman(3000 + number % 1000)
  end

  index = 0
  roman = ""

  while number > 0
    rest = number % 10
    letters = case rest
      when 1,2,3 then ROMAN[index]*rest
      when 4,5   then ROMAN[index]*(5-rest) + ROMAN[index+1]
      when 6,7,8 then ROMAN[index+1] + ROMAN[index]*(rest-5)
      when 9     then ROMAN[index] + ROMAN[index+2]
    end

    roman = "#{letters}#{roman}"
    number /= 10
    index += 2
  end

  roman
end

def to_arabic(string)
  len = string.length
  answer = last = 0

  0.upto(len-1) do |i|
    current = ROMAN_TO_ARABIC[string[i]]
    answer += current
    answer -= 2*last if current > last
    last = current
  end

  answer
end

after = before = 0
IO.read("input.txt").each_line do |roman_number|
  roman_number.strip!
  optimized = to_roman(to_arabic(roman_number))
  before += roman_number.length
  after  += optimized.length
end
puts before-after
