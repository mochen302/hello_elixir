defmodule Util do

  def  hello(names, language_code \\ "en")

  def hello(names, language_code) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello(language_code) ##为啥是调用hello
   end

  def hello(names, language_code) when is_binary(names) do
    phrase(language_code) <> names
  end

  defp phrase("en"), do: "hello_en,"
  defp phrase("es"), do: "hello_es,"

  def of([]), do: 0
  def of([_ | tail]), do: 1 + of(tail)

end
