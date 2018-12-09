defmodule Squizzy.Repo do
  use Ecto.Repo,
    otp_app: :squizzy,
    adapter: Ecto.Adapters.Postgres
end
