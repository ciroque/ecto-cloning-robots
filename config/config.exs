import Config

config :robot, Robot.Repo,
  database: "robot_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"

config :robot, Robot.Repo,
  database: "robot_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"

config :robot, ecto_repos: [Robot.Repo]

import_config "#{Mix.env()}.exs"

