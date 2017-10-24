# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :building_server,
  ecto_repos: [BuildingServer.Repo]

# Configures the endpoint
config :building_server, BuildingServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "U8TQa2qvb2Pe90JA6z1zkEDK4jJvf42Pl7IixsmKI/Xo0nMLCGS5RGIB6KjXCdj1",
  render_errors: [view: BuildingServerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BuildingServer.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
