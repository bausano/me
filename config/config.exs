# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :porkbrain,
  ecto_repos: [Porkbrain.Repo]

# Configures the endpoint
config :porkbrain, PorkbrainWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "i77hNUkBQXyQFqynT3ICPC40W5Eo+79XtPq1mxkyIkr2RP7VYq1LDSPdTWMOGVFb",
  render_errors: [view: PorkbrainWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Porkbrain.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "loqmqwj7"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Use markdown templating engine
config :phoenix, :template_engines, md: PhoenixMarkdown.Engine

# Use tags in the MD files (e.g. to load images from assets).
config :phoenix_markdown, :server_tags, :all
# Allows us to use wide range of characters, such as "@".
config :phoenix_markdown, :earmark, %{
  smartypants: false
}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
