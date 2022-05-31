defmodule Robot.Hands do
  @moduledoc false

  alias Robot.Hand

  def create(attrs \\ %{}) do
    %Hand{}
    |> Hand.changeset(attrs)
    |> Robot.Repo.insert()
  end

  def delete(hand), do: Robot.Repo.delete(hand)
end
