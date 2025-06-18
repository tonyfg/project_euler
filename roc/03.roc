app [main!] { pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br" }

import pf.Stdout

fdx = 600851475143

main! = |_args|
    # Find the largest prime factor of a number
    largest_prime_factor = |n, divisor|
        if n < 2 then
            1
        else if n % divisor == 0 then
            largest_prime_factor(n // divisor, divisor)
        else if divisor * divisor > n then
            n
        else
            largest_prime_factor(n, divisor + 1)

    largest_prime_factor(fdx, 2)
    |> Num.to_str
    |> Stdout.line!

# => 6857
