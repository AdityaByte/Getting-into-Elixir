defmodule DatanodeTest do
  use ExUnit.Case
  doctest Datanode

  test "greets the world" do
    assert Datanode.hello() == :world
  end
end
