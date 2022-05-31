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
    |> cast(attrs, [:name])
    |>validate_required([:name])
  end
end
