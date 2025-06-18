app [main!] { pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/Hj-J_zxz7V9YurCSTFcFdu6cQJie4guzsPMUi5kBYUk.tar.br" }

import pf.Stdout

# 5. What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

fdx = |n|
    if n % 2 == 0 && n % 3 == 0 && n % 4 == 0 && n % 5 == 0 && n % 6 == 0 &&
       n % 7 == 0 && n % 8 == 0 && n % 9 == 0 && n % 10 == 0 && n % 11 == 0 &&
       n % 12 == 0 && n % 13 == 0 && n % 14 == 0 && n % 15 == 0 && n % 16 == 0 &&
       n % 17 == 0 && n % 18 == 0 && n % 19 == 0 && n % 20 == 0 then
      n
    else
      fdx(n + 1)

main! = |_args|
    fdx 20
    |> Num.to_str
    |> Stdout.line!

# => 232792560
