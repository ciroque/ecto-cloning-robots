defmodule Robot.Utils do
  @moduledoc false

  def prepare_for_cloning(entity, attrs \\ %{}) do
    entity
    |> Map.from_struct()
    |> Map.drop([:id])
    |> Map.merge(attrs)
  end
end
