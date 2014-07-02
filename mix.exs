defmodule Colors.Mixfile do
  use Mix.Project

  def project do
    [app: :colors,
     version: "1.0.0",
     elixir: "~> 0.14.2 or ~> 0.14.3-dev",
     description: description,
     source_url: "https://github.com/lidashuang/colors",
     package: package,
     deps: deps
   ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: []]
  end

  defp deps do
    []
  end

  defp description do
    "a colors util"
  end

  defp package do
    [contributors: ["lidashuang"],
     licenses: ["Apache 2.0"],
     links: %{"Github" => "https://github.com/lidashuang/colors"}]
  end
end
