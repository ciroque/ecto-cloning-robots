defmodule Robot.Arm do
  @moduledoc false

  use Ecto.Schema

  import Ecto.Changeset

  schema "arms" do
    field :name, :string

    belongs_to :robot, Robot.Robot
    has_many :hands, Robot.Hand

    timestamps()
  end

  def changeset(arm, attrs) do
    arm
    |> cast(attrs, [:name, :robot_id])
    |> validate_required([:name, :robot_id])
  end
end
