defmodule Robot.Finger do
  @moduledoc false

  use Ecto.Schema

  import Ecto.Changeset

  schema "fingers" do
    field :name, :string

    belongs_to :hand, Robot.Hand

    timestamps()
  end

  def changeset(finger, attrs) do
    finger
    |> cast(attrs, [:name, :hand_id])
    |> validate_required([:name, :hand_id])
  end
end
