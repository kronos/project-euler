open Core.Std

let rec any l f = match l with
  | []     -> false
  | hd::tl -> f hd || any tl f

let is_prime number primes = not (any primes (fun x -> (number mod x) = 0))

let rec next_prime primes = match primes with
  | []    -> assert false
  | hd::_ -> let rec search_prime primes current =
               if is_prime current primes then current
               else search_prime primes (current+2) in
               search_prime primes (hd+2)

let largest_prime_factor n =
  let rec search_largest_prime primes n current = match n with
    | 1 -> current
    | _ when (n mod current) = 0 -> search_largest_prime primes (n/current) current
    | _ -> let new_primes = current::primes in
             search_largest_prime new_primes n (next_prime new_primes) in
               search_largest_prime [2] n 3

let () = Printf.printf "%d\n" (largest_prime_factor 600851475143)
