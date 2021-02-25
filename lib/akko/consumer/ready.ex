defmodule Akko.Consumer.Ready do
  alias Nostrum.Api

  def handle do
    :ok = Api.update_status(:dnd, "your wife", 3)
  end
end
