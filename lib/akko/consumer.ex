defmodule Akko.Consumer do
  use Nostrum.Consumer

  def start_link do
    Consumer.start_link(__MODULE__)
  end

  def handle_event({:MESSAGE_CREATE, msg, _ws_state}) do
    IO.puts(msg.content)
  end

  # Handle other event types or the consumer shits itself
  def handle_event(_event), do: :noop
end
