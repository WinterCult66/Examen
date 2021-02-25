use Mix.Config

# Configure your database
config :examen, Examen.Repo,
  username: "postgres",
  password: "1234",
  database: "examen_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :examen, ExamenWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
