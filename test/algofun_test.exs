defmodule AlgofunTest do
  use ExUnit.Case
  doctest Algofun

  test "greets the world" do
    assert Algofun.hello() == :world
  end
end
