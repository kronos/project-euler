open Core.Std

let fibonacci =
  let rec fibonacci_gen f1 f2 a =
    if f1 > 4_000_000 then f1
    else if (f1 mod 2) = 0 then fibonacci_gen f2 (f1+f2) (a + f1)
    else fibonacci_gen f2 (f1+f2) a in
    fibonacci_gen 1 1 0


let ()= Printf.printf "%d\n" fibonacci
