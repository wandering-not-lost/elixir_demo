defmodule Parse do
  def number([?- | tail]), do: _number_digits(tail, 0) * -1
  def number([?+ | tail]), do: _number_digits(tail, 0)
  def number(str),         do: _number_digits(str, 0)

  defp _number_digits([], value), do: value
  defp _number_digits([digit | tail], value) when digit in '0123456789' do
    _number_digits(tail, value*10 + digit - ?0)
  end
  defp _number_digits([non_digit | _], _) do
    raise "Invalid digit #{[non_digit]}"
  end

   def printable_ascii(sqs), do: Enum.all?(sqs, fn ch -> ch in ? ..?~ end)
   def anagram?(word1, word2), do: Enum.sort(word1) === Enum.sort(word2)  

end
