defmodule Akko.Consumer.MessageCreate do
  alias Akko.Commands

  def handle(msg) do
    unless msg.author.bot do
      Commands.command(msg)
    end
  end
end
