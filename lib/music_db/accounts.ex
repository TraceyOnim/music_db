defmodule MusicDb.Accounts do
  @moduledoc """
    accounts context
  """
  alias MusicDb.Repo
  import Ecto.Query

  @doc """
  querying artists data from database.
  Used where to filter the result we want from db.
  Query binding is implemented , in this case it helps in telling ecto that name
  is a column in the artist table.

    ## Example
     iex > MusicDb.Accounts.artists_data
           [%{id: 2, name: "Pendo"}]
  """
  def artists_data do
    query = from(a in "artists", where: a.name == "Pendo", select: [:id, :name])
    Repo.all(query)
  end
end
