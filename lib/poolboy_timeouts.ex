defmodule PoolboyTimeouts do
  @moduledoc false
  alias PoolboyTimeouts.Router
  import PoolboyTimeouts.Factory

  def create(count \\ 1) do
    Enum.map(1..count, fn i ->
      {i, Router.dispatch(build(:create_something))}
    end)
  end
end
