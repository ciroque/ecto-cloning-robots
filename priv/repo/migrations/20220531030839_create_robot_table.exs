defmodule Robot.Repo.Migrations.CreateRobotTable do
  use Ecto.Migration

  def change do
    create table(:robot) do
      add :name, :string

      timestamps()
    end
  end
end

