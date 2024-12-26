defmodule FreelancerRates do

  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount - before_discount * discount / 100.0
  end

  def monthly_rate(hourly_rate, discount) do
    ceil(daily_rate(hourly_rate) * 22 * (1 - discount / 100))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
    Float.floor(budget / apply_discount(daily_rate(hourly_rate), discount), 1)
  end
end
