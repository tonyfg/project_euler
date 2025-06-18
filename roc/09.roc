app [main!] { pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br" }

import pf.Stdout

# 9. There exists exactly one Pythagorean triplet for which a+b+c = 1000. Find the product a*b*c.

abc = |m, n|
    a = m*m - n*n
    b = 2 * m * n
    c = m*m + n*n
    if a + b + c == 1000 then
        Ok (a*b*c)
    else
        Err 0

numbers = List.range({ start: At(1), end: At(1000) })

main! = |_args|
    List.drop_first(numbers, 1) |> List.keep_oks(|m|
        List.take_first(numbers, m - 1)
        |> List.keep_oks(|n| abc(m, n))
        |> List.get(0)
    )
    |> List.get(0)
    |> Result.with_default(0)
    |> Num.to_str
    |> Stdout.line!

# => 31875000
