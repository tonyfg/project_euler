(* Q: Find the sum of all the even-valued terms in the Fibonacci sequence which do not exceed four million. *)
(* A: 4613732 *)

let sum_even_fib n =
  let rec fib a b =
    let even_b = if b mod 2 = 0 then b else 0 in
    if b >= n then
      0
    else
      even_b + fib b (a + b) in
  fib 0 1;;

sum_even_fib 4_000_000;;
