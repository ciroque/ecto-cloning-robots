defmodule Robot.Robots do
  @moduledoc false

  alias Robot.Robot
  alias Elixir.Robot.Repo, as: Repo

  def create(attrs \\ %{}) do
    %Robot{}
    |> Robot.changeset(attrs)
    |> Repo.insert()
  end

  def delete(robot), do: Repo.delete(robot)
end
