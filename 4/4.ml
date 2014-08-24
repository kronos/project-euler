(* get a nat number as a list of cifers *)
let rec cifers n = match n with
  | 0 -> []
  | _ -> (n mod 10)::(cifers (n/10))

(* check whether list is a palindrome; half the way is good enough here *)
let palindrome l = List.for_all2 (=) l (List.rev l);;

(* checks whether number factors in two three-cifer numbers *)
let is_two_three_cifer_factor n =
  let rec is_ttcf n x = match x with
    | _ when n/x >= 1000 -> false
    | _ when n mod x = 0 -> true
    | _ -> is_ttcf n (x-1)
  in
    is_ttcf n 999
;;

(* largest palindrome below x which factors into numbers of three cifers *)
let rec lp x =
    if palindrome (cifers x) && is_two_three_cifer_factor x
    then x
    else lp (x-1)
;;

let ()=
  Printf.printf "%d\n" (lp 999999);;

