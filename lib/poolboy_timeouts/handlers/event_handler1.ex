defmodule PoolboyTimeouts.Handlers.EventHandler1 do
  @moduledoc false

  use Commanded.Event.Handler, name: "event_handler_1", start_from: :current
  alias PoolboyTimeouts.Events.SomethingCreated

  def handler(%SomethingCreated{}, %{}) do
    loop_for_awhile(System.monotonic_time(:millisecond) + 200)
  end

  defp loop_for_awhile(time) do
    if System.monotonic_time(:millisecond) >= time do
      :ok
    else
      loop_for_awhile(time)
    end
  end
end
