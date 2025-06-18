app [main!] { pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br" }

import pf.Stdout

# 7. What is the 10001st prime number?

# nth = 10001
# limit = Num.floor(1.2 * nth * Num.log(nth))
limit = 110536 # Num.log is currently crashing the Roc compiler...
numbers = List.repeat(Bool.true, limit)

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

check_wanted_prime = |prime_count, prime, idx|
    if prime then
        if prime_count >= 10000 then
            Break(idx)
        else
            Continue(prime_count + 1)
    else
        Continue(prime_count)

main! = |_args|
    numbers
    |> List.set(0, Bool.false)
    |> List.set(1, Bool.false)
    |> sieve(2)
    |> List.walk_with_index_until(0, check_wanted_prime)
    |> Num.to_str
    |> Stdout.line!

# => 104743
