defmodule EmbeddedTestTest do
  use ExUnit.Case
  doctest EmbeddedTest

  test "greets the world" do
    assert EmbeddedTest.hello() == :world
  end
end
