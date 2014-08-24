open Core.Std

let sum l = List.fold ~f:(+) ~init:0 l

let range a b =
  let rec gen_range = function
    | current when current > b -> []
    | current -> current::gen_range (current+1)
  in
    gen_range a;;

let difference from _to =
  let numbers = range from _to in
    let simple_sum = sum numbers in
      simple_sum * simple_sum - (sum (List.map ~f:(fun x-> x*x) numbers))

let ()=
  Printf.printf "%d\n" (difference 1 100)
