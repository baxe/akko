defmodule Akko.MixProject do
  use Mix.Project

  def project do
    [
      app: :akko,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {Akko.Application, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:nostrum, "~> 0.4"}
    ]
  end
end
