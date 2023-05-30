defmodule BirdCount do

  def today([]), do: nil
  def today([h|_]), do: h

  def increment_day_count([]), do: [1]
  def increment_day_count([h|t]), do: [h + 1 | t]

  def total([]), do: 0
  def total([h|t]), do: h + total(t)

  defp busy_days([], count), do: count
  defp busy_days([h|t], count) when h >= 5, do: busy_days(t, count + 1)
  defp busy_days([_|t], count), do: busy_days(t, count)

  def busy_days(list), do: busy_days(list, 0)

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([0 | _]), do: true
  def has_day_without_birds?([_ | tail]), do: has_day_without_birds?(tail)
end
