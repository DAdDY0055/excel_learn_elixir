use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :sample_db, SampleDbWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :sample_db, SampleDb.Repo,
  username: "postgres",
  password: "postgres",
  database: "sample_db_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
