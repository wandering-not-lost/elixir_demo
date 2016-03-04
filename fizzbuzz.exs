defmodule FizzBuzz do

  #def upto(n) when n > 0, do: _downto(n, [])
  def upto(n) when n > 0, do:
  1..n |> Enum.map(&_fizzbuzz/1)

  defp _fizzbuzz(n) when rem(n,3) == 0 and rem(n, 5) == 0, do: "FizzBuzz"
  defp _fizzbuzz(n) when rem(n,3) == 0, do: "Fizz"
  defp _fizzbuzz(n) when rem(n,5) == 0, do: "Buzz"
  defp _fizzbuzz(n), do: n

  
  defp _upto(_current, 0, result),  do: Enum.reverse result

  defp _upto(current, left, result) do
    next_answer =
      cond do
        rem(current, 3) == 0 and rem(current, 5) == 0 ->
          "FizzBuzz"
        rem(current, 3) == 0 ->
          "Fizz"
        rem(current, 5) == 0 ->
          "Buzz"
        true ->
          current
      end
    _upto(current+1, left-1, [ next_answer | result ])
  end

  defp _downto(0, result), do: result
  defp _downto(current, result) do
    next_answer =
      cond do
        rem(current, 3) == 0 and rem(current, 5) == 0 ->
          "FizzBuzz"
        rem(current,3) == 0 ->
          "Fizz"
        rem(current,5) == 0 ->
          "Buzz"
        true ->
          current
      end
      _downto(current-1, [next_answer | result])
  end
end
