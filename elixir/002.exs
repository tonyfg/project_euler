#Q: Find the sum of all the even-valued terms in the Fibonacci sequence which do not exceed four million.
#A: 4613732

import Integer

defmodule Benchmark do
  def measure(function) do
    function
    |> :timer.tc
    |> elem(0)
    |> Kernel./(1_000_000)
  end
end

defmodule Fib do
  def fib(0), do: 1
  def fib(1), do: 1
  def fib(n), do: fib(n - 1) + fib(n - 2)
end

Enum.reduce_while(1..4_000_000, [], fn(n, l) ->
  f = Fib.fib(n)
  if f > 4_000_000 do
      {:halt, l}
  else
    if is_even(f), do: {:cont, [f | l]}, else: {:cont, l}
  end
end) |> Enum.sum
