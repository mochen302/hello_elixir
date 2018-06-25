defmodule Mix.Tasks.Hello do
  use Mix.Task

  def run(_) do
    IO.puts("before call Hello.say()")
    Hello.say()
    IO.puts("after call Hello.say()")
  end
end
