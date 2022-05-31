defmodule Robot.Repo.Migrations.CreateArmsTable do
  use Ecto.Migration

  def change do
    create table(:arms) do
      add :name, :string

      add :robot_id, references(:robots)

      timestamps()
    end
  end
end

