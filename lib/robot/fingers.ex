defmodule Robot.Fingers do
  @moduledoc false

  alias Robot.Finger
  alias Robot.Repo, as: Repo

  def clone(finger, hand_id) do
    {:ok, _} = cloned_finger = finger
    |> Robot.Utils.prepare_for_cloning(%{hand_id: hand_id})
    |> create()

    cloned_finger
  end

  def create(attrs \\ %{}) do
    %Finger{}
    |> Finger.changeset(attrs)
    |> Repo.insert()
  end

  def delete(finger), do: Repo.delete(finger)
end
