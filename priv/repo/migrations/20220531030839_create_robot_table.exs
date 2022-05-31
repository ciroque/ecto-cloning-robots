defmodule Robot.Repo.Migrations.CreateRobotTable do
  use Ecto.Migration

  def change do
    create table(:robots) do
      add :name, :string

      timestamps()
    end
  end
end

