use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :gimme, Gimme.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  cache_static_lookup: false,
  watchers: []

  
# Watch static and templates for browser reloading.
config :gimme, Gimme.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ]

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :gimme, Gimme.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "gimme_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
