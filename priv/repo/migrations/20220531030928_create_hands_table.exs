defmodule Robot.Repo.Migrations.CreateHandsTable do
  use Ecto.Migration

  def change do
    create table(:hands) do
      add :name, :string

      add :arm_id, references(:arms)

      timestamps()
    end
  end
end

