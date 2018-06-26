defmodule Watch do
  use Application

  def start(_type, _args) do
    port = Application.get_env(:study_elixir, :cowboy_port)

    children = [
      Plug.Adapters.Cowboy.child_spec(:http, Router, [], port: port)
    ]

    IO.puts("server is binding at #{port}")
    Supervisor.start_link(children, strategy: :one_for_one)
  end

end
