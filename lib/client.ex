defmodule Client do
  def main(args \\ [])do
    args
    |> parse_args
    |> response
    |> IO.puts()
  end

  defp parse_args(args) do
    {opts, world, _} =
      args
      |> OptionParser.parse(
           switches: [
             upcase: :boolean
           ]
         )
    {opts, List.to_string(world)}
  end

  defp response({opts, world}) do
    if opts[:upcase], do: String.upcase(world), else: world
  end

end
