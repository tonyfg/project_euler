(* Q: Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
 * A: 25164150 *)

let rec fdx i numbers squares =
  match i with
  | 0 -> (numbers * numbers) - squares
  | _ -> fdx (i - 1) (numbers + i) (squares + (i * i)) in
fdx 100 0 0;;
