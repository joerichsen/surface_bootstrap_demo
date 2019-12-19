# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :surface_demo,
  ecto_repos: [SurfaceDemo.Repo]

# Configures the endpoint
config :surface_demo, SurfaceDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8dujbPxA2IH+141nlmEyWT1KQivpu4DmBbj3glzZDmzw2EFt/UHy/x4Khy1b3Gtz",
  render_errors: [view: SurfaceDemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SurfaceDemo.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
