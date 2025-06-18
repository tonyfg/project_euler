app [main!] { pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br" }

import pf.Stdout

# 4. Find the largest palindrome made from the product of two -digit numbers

is_palindrome = |n|
    s = Num.to_str n
    s2 = Str.to_utf8 s |> List.reverse |> Str.from_utf8

    when s2 is
        Ok(s3) -> s == s3
        _ -> Bool.false

max_pali_product = |l, elem|
    List.map(l, \n -> n * elem)
    |> List.keep_if(is_palindrome)
    |> List.max
    |> Result.with_default(0)

main! = |_args|
    numbers = List.range({ start: At(100), end: At(999) })

    List.map(numbers, \n -> max_pali_product(numbers, n))
    |> List.max
    |> Result.with_default 0
    |> Num.to_str
    |> Stdout.line!

# => 906609
