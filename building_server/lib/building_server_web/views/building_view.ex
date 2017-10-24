defmodule BuildingServerWeb.BuildingView do
  use BuildingServerWeb, :view

  def render("index.json", %{buildings: buildings}) do
    %{
      buildings: Enum.map(buildings, &building_json/1)
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
