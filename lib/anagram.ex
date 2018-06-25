defmodule Anagram do

  def anagram?(a, b) when is_binary(a) and is_binary(b) do
    sort_string(a) == sort_string(b)
  end

  defp sort_string(string) do
    string
    |> String.downcase()
    |> String.Unicode.graphemes()
    |> Enum.sort()
  end

end
