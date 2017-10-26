defmodule BuildingServerWeb.Router do
  use BuildingServerWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BuildingServerWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", BuildingServerWeb do
     pipe_through :api

     get "/buildings", BuildingController, :index
     get "/buildings/in/:address", BuildingController, :buildings_in_address

  end
end
