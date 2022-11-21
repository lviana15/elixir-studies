defmodule Lasagna do
  @moduledoc """
  Documentation for `Lasagna`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Lasagna.hello()
      :world

  """
  def expected_minutes_in_oven do
    40
  end

  def remaining_minutes_in_oven(minutes_oven), do: 40 - (minutes_oven)

  def preparation_time_in_minutes(layers), do: layers * 2

  def total_time_in_minutes(layers, minutes_in_oven), do: (layers * 2) + minutes_in_oven

  def alarm, do: "Ding!"
end
