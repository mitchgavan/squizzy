defmodule QuestionsTest do
  use ExUnit.Case
  doctest Questions

  test "greets the world" do
    assert Questions.hello() == :world
  end
end
