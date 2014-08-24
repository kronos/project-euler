let rec gcd u v = match v with
  | 0 -> u
  | _ -> gcd v (u mod v)

let lcm m n = match m, n with
  | 0, _ | _, 0 -> 0
  | m, n -> m*n / (gcd m n)

let smallest_multuple n =
  let rec find_smallest_multuple current = function
    | 1 -> current
    | number -> find_smallest_multuple (lcm current number) (number-1)
  in
    find_smallest_multuple 1 n

let () =
  Printf.printf "%d\n" (smallest_multuple 20)
