defmodule Robot.Fingers do
  @moduledoc false

  alias Robot.Finger
  alias Robot.Repo, as: Repo

  def create(attrs \\ %{}) do
    %Finger{}
    |> Finger.changeset(attrs)
    |> Repo.insert()
  end

  def delete(finger), do: Repo.delete(finger)
end
