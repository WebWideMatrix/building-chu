defmodule BuildingServerWeb.PageController do
  use BuildingServerWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
