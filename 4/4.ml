(* get a nat number as a list of cifers *)
let rec cifers = function
  | 0 -> []
  | n -> (n mod 10)::(cifers (n/10))

(* check whether list is a palindrome; half the way is good enough here *)
let palindrome l = List.for_all2 (=) l (List.rev l);;

(* checks whether number factors in two three-cifer numbers *)
let two_three_cifer_factor n =
  let rec ttcf n = function
    | x when n/x >= 1000 -> false
    | x when n mod x = 0 -> true
    | x -> ttcf n (x-1)
  in
    ttcf n 999
;;

(* largest palindrome below x which factors into numbers of three cifers *)
let rec lp x =
    if palindrome (cifers x) && two_three_cifer_factor x
    then x
    else lp (x-1)
;;

let ()=
  Printf.printf "%d\n" (lp 999999);;

