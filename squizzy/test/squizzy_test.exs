defmodule SquizzyTest do
  use ExUnit.Case
  doctest Squizzy

  test "greets the world" do
    assert Squizzy.hello() == :world
  end
end
