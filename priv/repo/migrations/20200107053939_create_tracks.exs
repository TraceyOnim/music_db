defmodule MusicDb.Repo.Migrations.CreateTracks do
  use Ecto.Migration

  def change do
    create table(:tracks) do
      add(:title, :string)
      add(:duration, :integer)
      add(:index, :integer)
      add(:number_of_plays, :integer)

      timestamps()
    end
  end
end
