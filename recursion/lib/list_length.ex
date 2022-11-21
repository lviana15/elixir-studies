defmodule ListLength do
  def call([]), do: 0
  def call([ _ | tail]), do: 1 + call(tail)
end
