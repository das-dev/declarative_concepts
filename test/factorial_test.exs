defmodule FactorialTest do
  use ExUnit.Case
  doctest Factorial

  test "recursive computation of factorial" do
    assert Factorial.recursive(0) == 1
    assert Factorial.recursive(1) == 1
    assert Factorial.recursive(6) == 720
    assert_raise DomainError, "-1 out of domain", fn ->
      Factorial.recursive(-1)
    end
  end

  test "iterative computation of factorial" do
    assert Factorial.iterative(0) == 1
    assert Factorial.iterative(1) == 1
    assert Factorial.iterative(6) == 720
    assert_raise DomainError, "-1 out of domain", fn ->
      Factorial.iterative(-1)
    end
  end
end