defmodule Summation do
  def add(0), do: 0
  def add(n), do: n + add(n-1)
end

defmodule Divisor do
  def gcd(x,0), do: x
  def gcd(x,y), do: gcd(y, rem(x,y))
end
