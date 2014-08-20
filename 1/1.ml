open Core.Std

let answer = let get_3_and_5_multiplies = let rec range a b =
  if a > b then []
  else a :: range (a+1) b in
  List.filter ~f:(fun x -> (x mod 3) = 0 || (x mod 5) = 0) (range 1 999) in
  let sum l = List.fold_left ~f:(+) ~init:0 l in
  sum get_3_and_5_multiplies


let () = Printf.printf "%d\n" answer

