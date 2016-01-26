# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :gimme, Gimme.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "iJ4xZRN5rpKNF7XgD41rkDlehws1e3s9NQZt/R4x2yURTLj+TFjBv8lelOAuJfdI",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: Gimme.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :reaxt, :otp_app, :gimme
config :reaxt, :hot, if(Mix.env == :dev, do: :client, else: false)
config :reaxt, :pool_size, if(Mix.env == :dev, do: 1, else: 10)
config :reaxt, :global_config, %{
  example_config: "Config In Env :global_config of app :reaxt"
}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
