defmodule Robot.Repo.Migrations.CreateFingersTable do
  use Ecto.Migration

  def change do
    create table(:fingers) do
      add :name, :string

      add :hand_id, references(:hands)

      timestamps()
    end
  end
end

