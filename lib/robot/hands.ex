defmodule Robot.Hands do
  @moduledoc false

  alias Robot.{Fingers, Hand}

  def clone(%{fingers: fingers} = hand, arm_id) do
    {:ok, %{id: hand_id}} = cloned_hand = hand
    |> Robot.Utils.prepare_for_cloning(%{arm_id: arm_id})
    |> create()

    clone_fingers(fingers, hand_id)

    cloned_hand
  end

  def create(attrs \\ %{}) do
    %Hand{}
    |> Hand.changeset(attrs)
    |> Robot.Repo.insert()
  end

  def delete(hand), do: Robot.Repo.delete(hand)

  defp clone_fingers(fingers, hand_id) do
    for finger <- fingers, do: Fingers.clone(finger, hand_id)
  end
end
