defmodule BuildingServer.Building do
  use Ecto.Schema
  import Ecto.Changeset
  alias BuildingServer.Building

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "buildings" do
    field :address, :string
    field :contentType, :string
    field :createdAt, :utc_datetime
    field :energy, :integer
    field :flr, :string
    field :isComposite, :boolean, default: false
    field :key, :string
    field :occupied, :boolean, default: false
    field :occupiedBy, :string
    field :payload, :map
    field :picture, :string
    field :summary, :map
    field :x, :integer
    field :y, :integer

    timestamps()
  end

  @doc false
  def changeset(%Building{} = building, attrs) do
    building
    |> cast(attrs, [:picture, :contentType, :occupiedBy, :energy, :flr, :summary, :isComposite, :key, :address, :x, :y, :occupied, :payload, :createdAt])
    |> validate_required([:picture, :contentType, :occupiedBy, :energy, :flr, :summary, :isComposite, :key, :address, :x, :y, :occupied, :payload, :createdAt])
  end
end
