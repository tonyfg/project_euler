(* Q: There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.
 * A: 31875000 *)

open Base;;

let rec fdx ?(m = 2) ?(n = 1) () =
  let a = 2*m*n and
      b = m**2 - n**2 and
      c = m**2 + n**2 in
  let new_m, new_n = if n = m then m + 1, 1 else m, n + 1 in
  match a+b+c with
  | 1000 -> a*b*c
  | _ -> fdx ~m:new_m ~n:new_n ();;

fdx ();;
