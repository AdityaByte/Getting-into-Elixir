defmodule TcpClient do
  @doc """
  Here we are sending the data to the tcp server.
  """
  def sendRequest(port) do
    host = ~c'localhost'
    {:ok, socket} = :gen_tcp.connect(host, port, [:binary, {:packet, 0}, {:active, false}])
    :ok = :gen_tcp.send(socket, "Hello my name is aditya")
    :ok = :gen_tcp.close(socket)
    :ok
  end
end

TcpClient.sendRequest(4000)
