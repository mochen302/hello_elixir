defmodule SendingProcess do
  @moduledoc false

  def run(pid) do
    send(pid, :ping)
  end


end
