defmodule StudyElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :study_elixir,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript(),
      enable: true
    ]
  end

  defp escript do
    [main_module: Client]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:cowboy, :plug],
      mod: {Watch, []},
      env: [
        cowboy_port: 8080
      ]
      #            extra_applications: [:cowboy, :plug, :logger]],
      #                                                 mod: {Watch, []},
      #                                                              env: [cowboy_port: 8080]

    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix, "~> 1.1 or ~> 1.2"},
      {:phoenix_html, "~> 2.3"},
      {:cowboy, "~> 1.0"},
      {:plug, "~> 1.6"},
      #      {:slime, "~> 0.14"},
      #      {:earmark, "~> 1.0", only: :dev},
      #      {:ex_doc, "~> 0.18", only: :dev},
      #      {:png, github: "yuce/png"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
