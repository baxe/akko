defmodule Akko.Commands do
  alias Nostrum.Api

  def handle("ping", msg) do
    Api.create_message(
      msg.channel_id,
      content: "pong",
      allowed_mentions: :none,
      message_reference: %{message_id: msg.id}
    )
  end

  def handle(_invalid_command), do: :noop
end
