defmodule PoolboyTimeouts.MixProject do
  use Mix.Project

  def project do
    [
      app: :poolboy_timeouts,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :eventstore],
      mod: {PoolboyTimeouts.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:commanded, "~> 0.16.0"},
      {:commanded_eventstore_adapter, "~> 0.4.0"},
      {:eventstore, "~> 0.14.0"},
      {:ex_machina, "~> 2.0"},
      {:faker, "~> 0.10"}
    ]
  end
end
