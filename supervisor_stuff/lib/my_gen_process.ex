defmodule MyGenProcess do
  use GenServer

  # Client side functions.
  def start_link(_initial_arg) do
    IO.puts("Starting the process...")
    GenServer.start_link(__MODULE__, :ok, name: :my_gen_process)
  end

  def stop do
    IO.puts("Killing the process...")
    GenServer.stop(:my_gen_process, :normal)
  end

  # Callbacks.
  @impl true
  def init(initial_state) do
    {:ok, initial_state, {:continue, :log}}
  end

  @impl true
  def handle_continue(:log, state) do
    IO.puts("Process is started successfully.")
    {:noreply, state}
  end
end
