import Config

config :robot, Robot.Repo,
  username: "postgres",
  password: "mysecretpassword",
  database: "robot_dev",
  hostname: "localhost"

