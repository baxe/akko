defmodule Akko.Consumer.MessageCreate do
  alias Akko.Commands
  alias Akko.Helper

  def handle(message) do
    unless message.author.bot do
      if Helper.is_starting_with_prefix?(message.content) do
        message.content
        |> String.split(" ")
        |> Enum.at(0)
        |> String.trim(">")
        |> Commands.handle(message)
      end
    end
  end
end
