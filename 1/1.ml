let answer =
  let rec sum_3_and_5_multiplies sum = function
    | 1000 -> sum
    | current when (current mod 3) = 0 ||
                   (current mod 5) = 0 -> sum_3_and_5_multiplies (sum+current) (current+1)
    | current -> sum_3_and_5_multiplies sum (current+1)
  in
    sum_3_and_5_multiplies 0 3

let () = Printf.printf "%d\n" answer

