defmodule BuildingServerWeb.BuildingController do
  use BuildingServerWeb, :controller
  alias BuildingServer.{Repo, Building}

  def index(conn, _params) do
    buildings = Repo.all(Building)
    render conn, "index.json", buildings: buildings
  end
end
