# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :sampleCassandra,
  ecto_repos: [SampleCassandra.Repo]

config :sampleCassandra, SampleCassandra.Repo,
  adapter: EctoCassandra.Adapter,
  keyspace: "ecto_simple",
  contact_points: ["localhost"],
  replication: [
    class: "SimpleStrategy",
    replication_factor: 1,
  ]

# Configures the endpoint
config :sampleCassandra, SampleCassandra.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PHukIA7XsfD8Q8jaWqINoUJzQDX7MQoUTATv708Z5x+BrGGbjRG4/l+191dYI7Yq",
  render_errors: [view: SampleCassandra.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SampleCassandra.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
