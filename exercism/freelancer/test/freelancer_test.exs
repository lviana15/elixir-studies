defmodule FreelancerTest do
  use ExUnit.Case
  doctest Freelancer

  test "greets the world" do
    assert Freelancer.hello() == :world
  end
end
