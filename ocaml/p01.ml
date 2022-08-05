(* Q: Add all the natural numbers below one thousand that are multiples of 3 or 5. *)
(* A: 233168 *)

let rec addAll n = match n with
  | 1 -> 0
  | _ -> (if n mod 3 = 0 || n mod 5 = 0 then n else 0) + addAll (n - 1) in
addAll 999
