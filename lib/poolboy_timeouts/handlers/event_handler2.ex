defmodule PoolboyTimeouts.Handlers.EventHandler2 do
  @moduledoc false

  use Commanded.Event.Handler, name: "event_handler_2", start_from: :current
  alias PoolboyTimeouts.Events.SomethingCreated

  def handler(%SomethingCreated{}, %{}) do
    loop_for_awhile(System.monotonic_time(:second) + 1)
  end

  defp loop_for_awhile(time) do
    if System.monotonic_time(:second) >= time do
      :ok
    else
      loop_for_awhile(time)
    end
  end
end
