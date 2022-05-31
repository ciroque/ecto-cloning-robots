# Robot

Sandbox application to experiment with cloning Ecto models with a hierarchy.

## Setting it up

```bash
git clone git@github.com:ciroque/ecto-cloning-robots.git

cd ecto-cloning-robots

mix deps.get
mix ecto.setup

iex -S mix
```

```elixir
iex(1)> robot = Robot.Robots.load(1)

iex(1)> cloned = Robot.Robots.clone(robot)

```
