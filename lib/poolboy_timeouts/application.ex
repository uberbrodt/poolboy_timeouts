defmodule PoolboyTimeouts.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      {PoolboyTimeouts.Handlers.EventHandler1, []},
      {PoolboyTimeouts.Handlers.EventHandler2, []},
      {PoolboyTimeouts.Handlers.EventHandler3, []},
      {PoolboyTimeouts.Handlers.EventHandler4, []}
    ]

    opts = [strategy: :one_for_one, name: PoolboyTimeouts.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
