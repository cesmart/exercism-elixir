defmodule HighScore do
  @default_score 0

  def new() do
    %{}
  end

  def add_player(scores, name, score \\ @default_score), do:
    scores |> Map.put(name, score)

  def remove_player(scores, name), do:
    scores |> Map.delete(name)

  def reset_score(scores, name), do:
    scores |> Map.put(name, @default_score)

  def update_score(scores, name, score), do:
    scores |> Map.update(name, score, &(&1 + score))

  def get_players(scores), do:
    scores |> Enum.map(fn {name, _} -> name end)
end
