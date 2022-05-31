defmodule Robot.Robot do
  @moduledoc false

  use Ecto.Schema

  import Ecto.Changeset

  @required_fields [:name]
  @cast_fields @required_fields

  schema "robots" do
    field :name, :string

    has_many :arms, Robot.Arm

    timestamps()
  end

  def changeset(robot, attrs) do
    robot
    |> cast(attrs, @cast_fields)
    |> validate_required(@required_fields)
  end
end
