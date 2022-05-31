defmodule Robot.Robot do
  @moduledoc false

  use Ecto.Schema

  import Ecto.Changeset

  schema "robots" do
    field :name, :string

    has_many :arms, Robot.Arm

    timestamps()
  end

  def changeset(robot, attrs) do
    robot
    |> cast(attrs, [:name])
    |>validate_required([:name])
  end
end
