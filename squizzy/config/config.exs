# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :squizzy,
  ecto_repos: [Squizzy.Repo]

# Configures the endpoint
config :squizzy, SquizzyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uy3kCQoG8YFDpPu2CQNBVtav6kH+y3RyfN5bLMxb9pqP5J50uHB69cQoUbOM311b",
  render_errors: [view: SquizzyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Squizzy.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
