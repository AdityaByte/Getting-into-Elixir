defmodule Datanode.Application do
  use Application

  @impl true
  def start(_trype, _args) do
    children = [
      {DataNodeSupervisor, :ok},
    ]

    opts = [strategy: :one_for_one, name: Datanode.Application]
    {:ok, pid} = Supervisor.start_link(children, opts)

    # Once the supervisor is up we are spawning the bootstrap process.
    Task.start(fn ->
      IO.puts("[BOOTSTRAP] Sleeping 100ms to wait for DataNodeServer...")
      Process.sleep(100)
      bootstrap()
    end)

    {:ok, pid}
  end

  def bootstrap() do
    IO.puts("Running the server...")
    DataNodeServer.send("Message from the mix application\n")
    IO.inspect(DataNodeServer.receive())
  end
end
