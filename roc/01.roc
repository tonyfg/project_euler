app [main!] { pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br" }

import pf.Stdout

# 1. Sum of all multiples of 3 or 5 below 1000

main! = |_args|
    List.range({ start: At(1), end: Before(1000) })
    |> List.keep_if(|n| n % 3 == 0 || n % 5 == 0)
    |> List.sum
    |> Num.to_str
    |> Stdout.line!

# => 233168
