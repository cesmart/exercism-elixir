defmodule Lasagna do

  @ding "Ding!"
  @expected_minutes_in_oven 40
  @time_preparation_by_layer_in_minutes 2

  def expected_minutes_in_oven() do
    @expected_minutes_in_oven
  end

  def remaining_minutes_in_oven(actual_minutes) do
    expected_minutes_in_oven() - actual_minutes
  end

  def preparation_time_in_minutes(number_of_layers) do
    number_of_layers * @time_preparation_by_layer_in_minutes
  end

  def total_time_in_minutes(number_of_layers, minutes_passed) do
    preparation_time_in_minutes(number_of_layers) + minutes_passed
  end

  def alarm() do
    @ding
  end
end
