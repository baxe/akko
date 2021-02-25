defmodule Akko.Commands do
  alias Nostrum.Api

  @prefix Application.get_env(:example_app, :prefix, "!")

  def command(%{id: id, content: @prefix <> "ping", channel_id: channel_id}) do
    Api.create_message(
      channel_id,
      content: "pong",
      allowed_mentions: :none,
      message_reference: %{message_id: id}
    )
  end

  def command(_invalid_command), do: :noop
end
