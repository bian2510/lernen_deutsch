# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :german_words,
  ecto_repos: [GermanWords.Repo]

# Configures the endpoint
config :german_words, GermanWordsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "a9zbboo237AS84zELa1rCCGOj80QrDjIPc21y4o3wfKvqdzcKuAzHuf6N7nVqE/z",
  render_errors: [view: GermanWordsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: GermanWords.PubSub,
  live_view: [signing_salt: "cG94VYg5"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
