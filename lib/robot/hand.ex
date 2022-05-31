defmodule Robot.Hand do
  @moduledoc false

  use Ecto.Schema

  import Ecto.Changeset

  schema "hands" do
    field :name, :string

    belongs_to :arm, Robot.Arm
    has_many :fingers, Robot.Finger

    timestamps()
  end

  def changeset(hand, attrs) do
    hand
    |> cast(attrs, [:name])
    |>validate_required([:name])
  end
end
