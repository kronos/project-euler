power_1 = ((1+100)*50)**2
power_2 = (1..100).inject(0) {|p,e| p + e*e}
puts power_1 - power_2