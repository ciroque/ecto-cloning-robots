defmodule Robot.Robots do
  @moduledoc false

  alias Robot.{Arms, Robot}
  alias Elixir.Robot.Repo, as: Repo

  import Ecto.Query, warn: false

  def clone(%{id: id}), do: clone(id)
  def clone(id) do
    %{arms: arms} = original = load(id)

    {:ok, %{id: cloned_id}} = original
    |> Map.from_struct()
    |> create()

    clone_arms(arms, cloned_id)

    load(cloned_id)
  end

  def create(attrs \\ %{}) do
    %Robot{}
    |> Robot.changeset(attrs)
    |> Repo.insert()
  end

  def delete(robot), do: Repo.delete(robot)

  def load(%{id: id}), do: load(id)
  def load(id) do
    robots()
    |> id(id)
    |> with_full_preload
    |> Repo.one()
  end

  defp clone_arms(arms, robot_id) do
    for arm <- arms, do: Arms.clone(arm, robot_id)
  end

  defp id(query, id) do
    where(query, [r], r.id == ^id)
  end

  defp with_full_preload(query) do
    from(
      workout in query,
      preload: [arms: ^[hands: [:fingers]]]
    )
  end

  defp robots do
    from(robot in Elixir.Robot.Robot)
  end
end
