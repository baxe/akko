defmodule Akko.Consumer do
  use Nostrum.Consumer

  alias Akko.Consumer.{
    MessageCreate,
    Ready
  }

  def start_link do
    Consumer.start_link(__MODULE__)
  end

  def handle_event({:MESSAGE_CREATE, message, _ws_state}) do
    MessageCreate.handle(message)
  end

  def handle_event({:READY, _, _ws_state}) do
    Ready.handle()
  end

  # Handle other event types or the consumer shits itself
  def handle_event(_event), do: :noop
end
