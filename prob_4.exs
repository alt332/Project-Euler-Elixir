IO.puts Stream.map(900..999, fn(x) -> for y <- 900..999, do: x * y end)|> Stream.concat |> Stream.filter(&( String.reverse(Integer.to_string(&1)) == Integer.to_string(&1)) ) |> Enum.max
