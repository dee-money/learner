defmodule Learner.Repo.Migrations.CreateRooms do
  use Ecto.Migration

  def change do
    create table(:rooms) do
      add :name, :string
      add :building_id, references(:buildings, on_delete: :restrict), null: false

      timestamps()
    end

    create index(:rooms, [:building_id])
  end
end
