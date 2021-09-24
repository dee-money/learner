defmodule Learner.Repo do
  use Ecto.Repo,
    otp_app: :learner,
    adapter: Ecto.Adapters.Postgres
end
