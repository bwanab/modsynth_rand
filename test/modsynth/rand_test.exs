defmodule Modsynth.RandTest do
  use ExUnit.Case
  doctest Modsynth.Rand

  test "greets the world" do
    assert Modsynth.Rand.hello() == :world
  end
end
