app [main!] { pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br" }

import pf.Stdout

# 6. Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

numbers = List.range({ start: At(1), end: At(100) })

main! = |_args|
    sum_of_squares = List.map(numbers, |n| n * n) |> List.sum
    squared_sum = List.sum(numbers) * List.sum(numbers)

    squared_sum - sum_of_squares
    |> Num.to_str
    |> Stdout.line!

# => 25164150
