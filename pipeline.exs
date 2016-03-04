Enum.to_list(1..5)
|> Enum.map(&(&1*&1))
|> Enum.with_index
|> Enum.map(fn {value, index} -> value - index end)
|> IO.inspect    
