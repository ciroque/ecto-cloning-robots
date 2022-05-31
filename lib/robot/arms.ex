defmodule Robot.Arms do
  @moduledoc false

  alias Robot.{Arm, Hands}

  def clone(%{hands: hands} = arm, robot_id) do
    {:ok, %{id: arm_id}} = cloned_arm = arm
    |> Robot.Utils.prepare_for_cloning(%{robot_id: robot_id})
    |> create()

    clone_hands(hands, arm_id)

    cloned_arm
  end

  def create(attrs \\ %{}) do
    %Arm{}
    |> Arm.changeset(attrs)
    |> Robot.Repo.insert()
  end

  def delete(arm), do: Robot.Repo.delete(arm)

  defp clone_hands(hands, arm_id) do
    for hand <- hands, do: Hands.clone(hand, arm_id)
  end
end
