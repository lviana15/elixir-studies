defmodule FreelancerRates do
  def daily_rate(hourly_rate), do: hourly_rate * 8.0

  def apply_discount(price, discount), do: price - (price * (discount/ 100))

  def monthly_rate(hourly_rate, discount) do
    hourly_rate
    |> monthly()
    |> apply_discount(discount)
    |> ceil()
  end

  def days_in_budget(budget, hourly_rate, discount), do: Float.floor(budget / apply_discount(daily_rate(hourly_rate), discount), 1)

  defp monthly(hourly_rate), do: 22 * daily_rate(hourly_rate)
end
