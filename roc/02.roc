app [main!] { pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br" }

import pf.Stdout

# 2. By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

sum_even_fib = |a, b|
    if a > 4000000 then
        0
    else if a % 2 == 0 then
        a + sum_even_fib(b, a + b)
    else
        sum_even_fib(b, a + b)

main! = |_args|
    sum_even_fib(1, 2)
    |> Num.to_str
    |> Stdout.line!

# => 4613732
