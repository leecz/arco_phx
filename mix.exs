defmodule ArcoPhx.MixProject do
  use Mix.Project

  def project do
    [
      app: :arco_phx,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      maintainers: ["LiChengzhi"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/leecz/arco_phx"},
      files: ~w(lib assets/*.css priv .formatter.exs mix.exs README*)
    ]
  end

  defp description do
    "Phoenix UI components library inspired by Arco Design"
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:gettext, "~> 0.20"},
      {:phoenix, "~> 1.7.11"},
      {:phoenix_live_view, "~> 1.0"},
      {:credo, "~> 1.7.10", only: [:dev, :test], runtime: false},
      {:tailwind_formatter, "~> 0.3.5", only: [:dev, :test], runtime: false}
    ]
  end
end
