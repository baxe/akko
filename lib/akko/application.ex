defmodule Akko.Application do
  use Application

  def start(_type, _args) do
    children = [Akko.Consumer]
    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
