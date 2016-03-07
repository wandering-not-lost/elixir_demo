defmodule IsOk do
  def ok!({:ok, data}), do: data
  def ok!({exception, data}), do: raise("#{exception}, #{data}")
end
