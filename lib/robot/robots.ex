defmodule Robot.Robots do
  @moduledoc false

  alias Robot.Robot
  alias Elixir.Robot.Repo, as: Repo

  import Ecto.Query, warn: false

  def clone(_robot) do
    {:error, :not_yet_implemented}
  end

  def create(attrs \\ %{}) do
    %Robot{}
    |> Robot.changeset(attrs)
    |> Repo.insert()
  end

  def delete(robot), do: Repo.delete(robot)

  def load(id) do
    robots()
    |> id(id)
    |> with_full_preload
    |> Repo.one()
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
