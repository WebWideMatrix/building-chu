defmodule BuildingServerWeb.BuildingView do
  use BuildingServerWeb, :view

  def render("index.json", %{buildings: buildings}) do
    %{
      count: Enum.count(buildings),
      buildings: buildings
    }
  end

  def building_json(building) do
    %{
      address: building.address,
      key: building.key,
      x: building.x,
      y: building.y,
      contentType: building.contentType,
      isComposite: building.isComposite,
      summary: building.summary,
      picture: building.picture,
      energy: building.energy,
      createdAt: building.createdAt,
      isOccupied: building.occupied,
      occupiedBy: building.occupiedBy
    }
  end

end
