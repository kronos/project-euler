open Core.Std

let is_prime number primes =
  List.for_all primes ~f:(fun x -> (number mod x) <> 0)

let rec next_prime primes = function
  | current when is_prime current primes -> current
  | current -> next_prime primes (current+2)

let find_prime n =
  let rec find_prime_rec primes last count = match count with
    | 0 -> last
    | _ -> let prime = next_prime primes (last+2) in
             find_prime_rec (primes@[prime]) prime (count-1)
  in
    find_prime_rec [2; 3] 3 (n-2)

let () =
  Printf.printf "%d\n" (find_prime 10001)
