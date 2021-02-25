defmodule Akko.Consumer.MessageCreate do
  alias Nostrum.Api

  def handle(msg) do
    unless msg.author.bot do
      Api.create_message(
        msg.channel_id,
        content: "i reply to everything ok",
        allowed_mentions: :none,
        message_reference: %{message_id: msg.id}
      )
    end
  end
end
