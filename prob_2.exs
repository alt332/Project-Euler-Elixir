defmodule Euler.Prob2 do
  def solve(limit) do
    fib(limit)
  end

  def fib(limit) do
    fib(0, 1, 0, limit)
  end

  def fib(_, _, acc, limit) when acc >= limit do
    IO.puts acc
  end

  def fib(a, b, acc, limit) when acc < limit do
    sum = a + b
    if rem(sum, 2) == 0 do
      acc = sum + acc
    end
    fib(b, sum, acc, limit)
  end
end
