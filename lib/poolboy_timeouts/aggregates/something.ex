defmodule PoolboyTimeouts.Aggregates.Something do
  @moduledoc false

  alias PoolboyTimeouts.Commands.CreateSomething
  alias PoolboyTimeouts.Events.SomethingCreated

  defstruct([:attr1, :attr2, :attr3, :attr4, :attr5, :attr6, :attr7])

  def execute(%__MODULE__{}, %CreateSomething{} = cmd) do
    %SomethingCreated{
      attr1: cmd.attr1,
      attr2: cmd.attr2,
      attr3: cmd.attr3,
      attr4: cmd.attr4,
      attr5: cmd.attr5,
      attr6: cmd.attr6,
      attr7: cmd.attr7
    }
  end

  def apply(_aggregate, %SomethingCreated{} = event) do
    %__MODULE__{
      attr1: event.attr1,
      attr2: event.attr2,
      attr3: event.attr3,
      attr4: event.attr4,
      attr5: event.attr5,
      attr6: event.attr6,
      attr7: event.attr7
    }
  end
end
