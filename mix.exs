defmodule Colors.Mixfile do
  use Mix.Project

  def project do
    [
      app: :colors,
      version: "1.1.1",
      elixir: ">= 1.0.0",
      description: description(),
      source_url: "https://github.com/lidashuang/colors",
      homepage_url: "https://github.com/lidashuang/colors",
      docs: [main: "Colors", extras: ["README.md"]],
      package: package(),
      deps: deps()
   ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: []]
  end

  defp deps do
    [{:ex_doc, "~> 0.14", only: :dev, runtime: false}]
  end

  defp description do
    "a colors util"
  end

  defp package do
    [
      contributors: ["lidashuang", "vim-zz"],
      maintainers: ["lidashuang"],
      licenses: ["Apache 2.0"],
      links: %{"Github" => "https://github.com/lidashuang/colors"}
    ]
  end
end
