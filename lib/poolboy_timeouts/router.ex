defmodule PoolboyTimeouts.Router do
  @moduledoc false
  use Commanded.Commands.Router
  alias PoolboyTimeouts.Aggregates.Something
  # alias PoolboyTimeouts.Events.SomethingCreated
  alias PoolboyTimeouts.Commands.CreateSomething

  identify(Something, by: :attr1)

  dispatch(CreateSomething, to: Something)
end
