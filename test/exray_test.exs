defmodule ExrayTest do
  use ExUnit.Case
  doctest Exray

  test "greets the world" do
    assert Exray.hello() == :world
  end
end
