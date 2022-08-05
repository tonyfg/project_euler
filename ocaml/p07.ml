(* Q: What is the 10001st prime number?
 * A: 104743 *)

let is_prime n  =
  let sqrt_n = n |> Float.of_int |> sqrt |> Int.of_float in
  let rec check_num i =
    if i > sqrt_n then
      true
    else if n mod i = 0 then
      false
    else
      check_num (i + 1) in
  check_num 2;;

let rec nth_prime ?(i = 1) ?(j = 2) n =
  if is_prime j then
    if i = n then
      j
    else
      nth_prime ~i:(i + 1) ~j:(j + 1) n
  else
    nth_prime ~i ~j:(j + 1) n;;

nth_prime 10001;;
