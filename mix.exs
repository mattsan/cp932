defmodule CP932.MixProject do
  use Mix.Project

  def project do
    [
      app: :cp932,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:codepagex, "~> 0.1.9"},
      {:ex_doc, "~> 0.34.0", only: :dev, runtime: false},
      {:credo, "~> 1.7", only: :dev, runtime: false}
    ]
  end
end
