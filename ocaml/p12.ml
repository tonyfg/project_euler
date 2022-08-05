(* Q: What is the value of the first triangle number to have over five
 *  hundred divisors?
 * A: 76576500 *)

let tn i = i * (i + 1) / 2;;

let divisors n =
  let length = n / 2 in
  let arr = Seq.unfold (fun i -> if i > length then None else Some (1, i + 1)) 1
            |> Array.of_seq in
  let rec toggle_mults i step =
    if i < length then
      (Array.set arr i 0;
       toggle_mults (i + step) step) in
  let incr = ref 1 in
  let i = ref 2 in
  while (!i - 1) < length do
    if arr.(!i - 1) = 1 && n mod !i > 0 then
      (toggle_mults (!i - 1) !i;
       incr := !i);
    i := !i + !incr
  done;
  Array.fold_left (+) 0 arr;;

let ok n = divisors n > 500;;

let i = ref 1;;
while !i |> tn |> ok |> not do
  i := !i + 1
done;;

tn !i;;
