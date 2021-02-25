defmodule Akko.Helper do
  def is_starting_with_prefix?(message) do
    message
    |> String.downcase
    |> String.starts_with?(">")
  end
end
