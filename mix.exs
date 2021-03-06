defmodule Modsynth.Rand.MixProject do
  use Mix.Project

  def project do
    [
      app: :modsynth_rand,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:sc_em, :jason, :music_prims],
      extra_applications: [:logger],
      mod: {Modsynth.Rand, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jason, "~> 1.2"},
      {:music_prims, path: "../music_prims"},
      {:sc_em, path: "../sc_em"}
    ]
  end
end
