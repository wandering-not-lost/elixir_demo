defmodule Lists do
  def len([]), do: 0
  def len([_head|tail]), do: 1+len(tail)

  def square([]), do: []
  def square([head|tail]), do: [head*head | square(tail)]

  def add_1([]), do: []
  def add_1([head|tail]), do: [head+1|add_1(tail)]

  def map([], _func), do: []
  def map([head|tail], func), do: [func.(head) | map(tail, func)]

  def sum(list), do: _sum(list,0)
  defp _sum([], total),  do: total
  defp _sum([head|tail], total), do: _sum(tail, head+total)

  def sum1([]), do: 0
  def sum1([head|tail]), do: head + sum1(tail)

  def reduce([], value, _), do: value
  def reduce([head|tail],value, func), do: reduce(tail, func.(head,value), func)

  def mapsum([], _), do: 0
  def mapsum([head|tail], func), do: func.(head) + mapsum(tail, func)

  def max([x]), do: x
  def max([head|tail]), do: Kernel.max(head, max(tail))

  def caesar([], _n), do: []
  def caesar([head|tail], n) when head+n <= ?z, do: [head+n, caesar(tail, n)]
  def caesar([head|tail], n), do: [head+n-26, caesar(tail, n)]

  def span(from, to) when from > to, do: []
  def span(from, to), do: [from | span(from+1, to)]
end
