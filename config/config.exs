# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :commanded,
  event_store_adapter: Commanded.EventStore.Adapters.EventStore

config :eventstore, EventStore.Storage,
  serializer: Commanded.Serialization.JsonSerializer,
  username: "cbrodt",
  database: "poolboy_timeouts",
  pool_size: 25,
  pool_overflow: 100

#     import_config "#{Mix.env}.exs"
