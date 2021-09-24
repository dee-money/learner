# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :learner,
  ecto_repos: [Learner.Repo]

# Configures the endpoint
config :learner, LearnerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TMwVvYtim3xufE3mxzPXo7fszZPXPtDj8s9+3Ro0LXukCCFXi8lHKoyNdGu2l098",
  render_errors: [view: LearnerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Learner.PubSub,
  live_view: [signing_salt: "HrBwi6dd"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
