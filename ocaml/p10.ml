(* Q: Find the sum of all the primes below two million.
 * A: 142913828922 *)

open Base;;

let is_prime n  =
  let sqrt_n = n |> Float.of_int |> Float.sqrt |> Int.of_float in
  let rec check_num i =
    if i > sqrt_n then
      true
    else if Int.rem n i = 0 then
      false
    else
      check_num (i + 1) in
  check_num 2;;

let rec fdx n sum =
  if n >= 2_000_000 then
    sum
  else
    let add = if is_prime n then n else 0 in
    fdx (n + 1) (sum + add);;

fdx 2 0;;
