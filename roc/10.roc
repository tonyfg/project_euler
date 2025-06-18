app [main!] { pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br" }

import pf.Stdout

# 10. Find the sum of all the primes below two million.

numbers = List.repeat(Bool.true, 2000000)
          |> List.set(0, Bool.false)
          |> List.set(1, Bool.false)

is_prime = |n, divisor|
    if divisor != n && n % divisor == 0 then
        Bool.false
    else
        divisor * divisor > n || is_prime(n, divisor + 1)

mark_mults_as_normal = |l, idx, step|
    if idx >= List.len(l) then
        l
    else
        List.set(l, idx, Bool.false)
        |> mark_mults_as_normal(idx + step, step)

sieve = |l, idx|
    when List.get(l, idx) is
        Err _ -> l
        Ok(marked_prime) -> (
          idx_to_mark = if !marked_prime || !is_prime(idx, 2) then
              idx
          else
              idx + idx

          mark_mults_as_normal(l, idx_to_mark, idx)
          |> sieve(idx + 1)
        )

main! = |_args|
    sieve(numbers, 2)
    |> List.map_with_index(|n, i| if n then i else 0)
    |> List.sum
    |> Num.to_str
    |> Stdout.line!

# => 142913828922
