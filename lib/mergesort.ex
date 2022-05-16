defmodule MergeSort do
  @moduledoc """
  """

  @doc """
  ## Examples
  """
  def merge(xs, ys) do
    case {xs, ys} do
      {xs, []} -> xs
      {[], ys} -> ys
      {[x|xt], [y|yt]} when x > y -> merge()
      {[x|xt], [y|yt]} when x > y -> merge()
  end
end
  