(* Q: What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?
 * A: 232792560 *)

let rec fdx i j =
  match j with
  | 1 -> i
  | _ -> if i mod j = 0 then fdx i (j - 1) else fdx (i + 20) 20 in
fdx 40 20;;
