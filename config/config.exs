# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :humi_cafe,
  ecto_repos: [HumiCafe.Repo]

# Configures the endpoint
config :humi_cafe, HumiCafeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CgofzMPoX3SoKMj9McTMj3Bc1trH7jUIfgnDCiO/luz0IiiA1LigrL8IorZ/tKGl",
  render_errors: [view: HumiCafeWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: HumiCafe.PubSub,
  live_view: [signing_salt: "2001r3nQ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
