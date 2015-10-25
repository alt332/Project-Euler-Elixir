square = &(&1 * &1)

num1 = 1..100 |> Stream.map(square) |> Enum.sum
num2 = square.(Enum.sum 1..100)

IO.puts num2 - num1
