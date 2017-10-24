defmodule BuildingServer.Repo.Migrations.CreateBuildings do
  use Ecto.Migration

  def change do
    create table(:buildings) do
      add :picture, :string
      add :contentType, :string
      add :occupiedBy, :string
      add :energy, :integer
      add :flr, :string
      add :summary, :map
      add :isComposite, :boolean, default: false, null: false
      add :key, :string
      add :address, :string
      add :x, :integer
      add :y, :integer
      add :occupied, :boolean, default: false, null: false
      add :payload, :map
      add :createdAt, :utc_datetime

      timestamps()
    end

  end
end
