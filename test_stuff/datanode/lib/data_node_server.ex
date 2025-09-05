defmodule DataNodeServer do
  use GenServer
  # Here we have to create a gen server.

  def start_link(server_port \\ 4000) do
    GenServer.start(__MODULE__, server_port, name: __MODULE__)
  end

  # Send data function.
  def send(data) do
    GenServer.call(__MODULE__, {:send, data})
  end

  # receive data function.
  def receive() do
    GenServer.call(__MODULE__, :receive)
  end

  # Stopping the gen server process.
  def stop() do
    GenServer.stop(__MODULE__, :normal)
  end

  # Underline methods which we have to implement by own.
  @impl true
  def init(server_port) do
    addr = ~c'localhost'
    {:ok, socket} = :gen_tcp.connect(addr, server_port, [:binary, {:packet, 0}, {:active, false}])
    IO.puts("Connection has been establish to the server..")
    {:ok, socket}
  end

  @impl true
  def handle_call({:send, data}, _from, socket) do
    :ok = :gen_tcp.send(socket, data)
    IO.puts("Data has been successfully sent to the server.")
    {:reply, :ok, socket}
  end

  @impl true
  def handle_call(:receive, _from, socket) do
    case :gen_tcp.recv(socket, 0, 4000) do
      {:ok, recv_data} ->
        IO.puts("received data: #{recv_data}")
        {:reply, {:ok, recv_data}, socket}

      {:error, :timeout} ->
        IO.puts("No data received (timeout)")
        {:reply, {:error, :timeout}, socket}

      {:error, reason} ->
        IO.puts("Error: #{inspect(reason)}")
        {:reply, {:error, reason}, socket}
    end
  end

  # Terminating the gen_server process.
  @impl true
  def terminate(_reason, socket) do
    IO.puts("Cleaning up: closing socket.")
    :gen_tcp.close(socket)
    :ok
  end
end
