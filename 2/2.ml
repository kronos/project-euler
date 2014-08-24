let fibonacci max =
  let rec fibonacci_gen f1 f2 a = match f1 with
    | _ when (f1 > max) -> a
    | _ when (f1 mod 2) = 0 -> fibonacci_gen f2 (f1+f2) (a + f1)
    | _ -> fibonacci_gen f2 (f1+f2) a
  in
    fibonacci_gen 1 1 0

let ()= Printf.printf "%d\n" (fibonacci 4_000_000)
