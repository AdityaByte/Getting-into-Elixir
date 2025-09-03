defmodule TcpServer do
  @doc """
  start_server function:
  We are doing these steps in this function firstly we are creating a tcp server which is listening on a port
  that we specified here we have given some options.
  binary: Data transfer would be in binary.
  {:packet, 0}: Bundle side would be anything.
  {:active, false}: we explicitly recieve the data in a seperate line.
  """
  def start_server(port) do
    {:ok, server_socket} = :gen_tcp.listen(port, [:binary, {:packet, 0}, {:active, false}])
    IO.puts("Server is running on port #{port}")
    {:ok, client_socket} = :gen_tcp.accept(server_socket)
    {:ok, data_packet} = :gen_tcp.recv(client_socket, 0) # 0 readall.
    :gen_tcp.close(client_socket)
    data_packet
  end
end

data = TcpServer.start_server(4000)
IO.puts("recieved data: #{data}")
