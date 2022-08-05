(* Q: Find the largest palindrome made from the product of two 3-digit numbers.
 * A: 906609 *)

open Base

let is_pal n =
  let s = Int.to_string n in
  let reversed = String.fold s ~init:[] ~f:(fun acc c -> c :: acc)
                 |> String.of_char_list in
  String.equal s reversed

let rec max_pal i j cur_max =
  let new_i, new_j = match i with
    | 0 -> 999, j - 1
    | _ -> i - 1, j in
  let n = i * j in
  let new_max = if n > cur_max && is_pal n then n else cur_max in
  match j with
  | 0 -> cur_max
  | _ -> max_pal new_i new_j new_max;;

max_pal 999 999 0;;
