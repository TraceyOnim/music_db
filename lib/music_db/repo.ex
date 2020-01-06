defmodule MusicDb.Repo do
  use Ecto.Repo,
    otp_app: :music_db,
    adapter: Ecto.Adapters.Postgres

  def count(table) do
    aggregate(table, :count)
  end
end
