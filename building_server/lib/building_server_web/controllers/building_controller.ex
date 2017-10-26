defmodule BuildingServerWeb.BuildingController do
  use BuildingServerWeb, :controller
  alias BuildingServer.Repo
  import Ecto.Query, only: [from: 2]

  def index(conn, _params) do
    query = from bldg in "buildings",
              where: bldg.x >= 0
    buildings = Repo.all(query)
    render conn, "index.json", buildings: buildings
  end

  def buildings_in_address(conn, %{"address" => address}) do
    query = from bldg in "buildings",
              where: bldg.flr == ^address
    buildings = Repo.all(query)
    render conn, "index.json", buildings: buildings
  end

end
