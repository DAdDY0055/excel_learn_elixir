defmodule SampleDb.Repo do
  use Ecto.Repo,
    otp_app: :sample_db,
    adapter: Ecto.Adapters.Postgres
end
