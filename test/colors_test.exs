defmodule ColorsTest do
  use ExUnit.Case

  test "red" do
    assert Colors.red("red") == "\e[31mred\e[39m"
  end
end
