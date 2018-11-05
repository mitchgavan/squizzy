# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :squizzy, SquizzyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "z5/ct/hMd/o55MQY7FIbbuDe5Jo3AfNFs990JmqF55ZbOygyjhgyeg45iY8339UH",
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
