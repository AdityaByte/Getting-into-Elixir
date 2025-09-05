defmodule DataNodeSupervisor do
  use Supervisor

  def start_link(init_arg) do
    Supervisor.start_link(__MODULE__, init_arg, name: __MODULE__)
  end

  # Here we need to init the supervisor.
  @impl true
  def init(:ok) do
    children = [
      {DataNode, 4000}
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end
