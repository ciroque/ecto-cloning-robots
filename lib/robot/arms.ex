defmodule Robot.Arms do
  @moduledoc false

  alias Robot.Arm

  def create(attrs \\ %{}) do
    %Arm{}
    |> Arm.changeset(attrs)
    |> Robot.Repo.insert()
  end

  def delete(arm), do: Robot.Repo.delete(arm)
end
