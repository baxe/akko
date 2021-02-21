defmodule AkkoTest do
  use ExUnit.Case
  doctest Akko

  test "greets the world" do
    assert Akko.hello() == :world
  end
end
