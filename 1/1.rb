p (3...1000).inject(0) {|s, e| e%3 == 0 || e%5 == 0 ? s + e : s}