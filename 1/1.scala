var r = 0;
for (i <- 1 to 999 if i % 3 == 0 || i % 5 == 0) r += i
println(r);
