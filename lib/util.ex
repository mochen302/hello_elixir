defmodule Util do

  def  hello(names, language_code \\ "en")

  def hello(names, language_code) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello(language_code) ## !!管道操作符 |> 把前面表达式的结果传递给后面的表达式作为第一个参数。!!!
  end

  def hello(names, language_code) when is_binary(names) do
    phrase(language_code) <> names
  end

  defp phrase("en"), do: "hello_en,"
  defp phrase("es"), do: "hello_es,"

  def of([]), do: 0
  def of([_ | tail]), do: 1 + of(tail)



end
