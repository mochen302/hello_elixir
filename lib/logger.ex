defmodule Logger do
  defmacro log(msg) do
    if Application.get_env(:logger, :enable) do
      quote do
        IO.puts("Logged message: #{unquote(msg)}")
      end
    end
  end
end
