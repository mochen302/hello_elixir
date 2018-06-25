defmodule MySigils do
  @moduledoc """
  主要是用作创建自己的魔符
  """
  @doc """
   创建自己的魔符 ~u
  """
  def sigil_u(string, []), do: String.upcase(string)
end
