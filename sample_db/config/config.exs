# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :sample_db,
  ecto_repos: [SampleDb.Repo]

# Configures the endpoint
config :sample_db, SampleDbWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "m3rwnpwF1SxZStF7XaoMEavVuv80lz70yxDKMUmEr7oAVZE5fzlE1PzpJM3TMtZp",
  render_errors: [view: SampleDbWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SampleDb.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
