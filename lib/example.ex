defmodule Example do
  #  require Logger

  def timed(fun, args) do
    {time, result} = :timer.tc(fun, args)
    IO.puts("Time: #{time} μs")
    IO.puts("Result: #{result}")
  end

  def add(a, b) do
    IO.puts(a + b)
  end

  def listen do
    receive do
      {:ok, "hello"} -> IO.puts("world")
    end
    listen()
  end

  def double(x) do
    :timer.sleep(2000)
    x * 2
  end

  def test do
    #    Logger.log("This is a log message")
  end

  defmacro hygienic do
    quote do: val = -1
  end

  defmacro unhygienic do
    quote do: var!(val) = 2
  end

  defmacro double_puts(expr) do
    quote bind_quoted: [
            expr: expr
          ] do
      IO.puts(expr)
      IO.puts(expr)
    end
  end

  def myif(condition, clauses) do
    do_clause = Keyword.get(clauses, :do, nil)
    else_clause = Keyword.get(clauses, :else, nil)

    case condition do
      val when val in [false, nil]
      -> else_clause
      _otherwise
      -> do_clause
    end

  end

end
