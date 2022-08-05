(* Q: What is the largest prime factor of the number 600851475143?
 * A: 6857 *)

let is_prime n  =
  let sqrt_n = n |> Float.of_int |> sqrt |> Int.of_float in
  let rec check_num i =
    if i > sqrt_n then
      true
    else if n mod i = 0 then
      false
    else
      check_num (i + 1) in
  check_num 2

(* beware that this implementation of largest prime factor has flaws.
 *  all of the implementations I have in other languages do as well...
 *  but it happens to work for numbers without repeated prime factors :D *)

let rec largest_prime_factor ?(factor = 1) ?(acc = 1) n =
  if factor >= n / 2 then
    factor
  else if is_prime factor && n mod factor = 0 then
    let new_acc = acc * factor in
    if new_acc = n then
      factor
    else
      largest_prime_factor ~factor:(factor + 1) ~acc:new_acc n
  else
    largest_prime_factor ~factor:(factor + 1) ~acc:acc n

let f = largest_prime_factor 600851475143
