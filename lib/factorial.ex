defmodule DomainError do
  defexception message: "N out of domain"
end

defmodule Factorial do
  @moduledoc """
  Translation of examples from Oz to Elixir based on
  "Concepts, Techniques, and Models of Computer Programming",
  Van Roy
  """
  
  @doc """
  ## Examples
    iex> Factorial.recursive(6)
    720
    iex> Factorial.recursive(-1)
    ** (DomainError) -1 out of domain
  """
  def recursive(n) do
    cond do
      n == 0 -> 1
      n > 0 -> n*recursive(n-1)
      true -> raise DomainError, message: "#{n} out of domain"
    end
  end

  @doc """
  ## Examples
    iex> Factorial.iterative(6)
    720
    iex> Factorial.iterative(-1)
    ** (DomainError) -1 out of domain
  """
  def iterative(n, acc \\ 1) do
    cond do
      n == 0 -> acc
      n > 0 -> iterative(n-1, n*acc)
      true -> raise DomainError, message: "#{n} out of domain"
    end
  end
end