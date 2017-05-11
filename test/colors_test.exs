defmodule ColorsTest do
  use ExUnit.Case

  test "red" do
    assert Colors.red("red") == "\e[31mred\e[39m"
  end

  test "random" do
    random_color = Colors.random("blue_skies", :color)
    # IO.puts random_color
    assert String.contains?(random_color, "blue_skies")
  end

  test "random pipe" do
    random_color = "random pipe" |> Colors.random(:color)
    assert String.contains?(random_color, "random pipe")
  end

  test "list" do
    assert :red in Colors.list(:color)
  end
end
