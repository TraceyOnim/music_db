import Config

config :music_db, MusicDb.Repo,
  database: "music_db_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :music_db, ecto_repos: [MusicDb.Repo]
