# Simply creating a genserver which is a just a generic server it do all the things of process we can
# say that it just abstract out the things and just give us some useful information for process management.

defmodule Counter do
  use GenServer

  def start_link(initial_value \\ 0) do
    GenServer.start_link(__MODULE__, initial_value, name: __MODULE__)
  end

  def increment() do
    GenServer.cast(__MODULE__, :increment)
  end

  def get() do
    GenServer.call(__MODULE__, :get)
  end

  # Server callbacks.

  @impl true
  def init(initial_value) do
    {:ok, initial_value}
  end


  # The handle_call method is an synchronous method the caller waits for the reply from the GenServer.
  @impl true
  def handle_call(:get, _from, state) do
    {:reply, state, state}
  end

  # The handle_cast method is a asynchrous request.
  @impl true
  def handle_cast(:increment, state) do
    {:noreply, state+1}
  end
end


{:ok, process_id} = Counter.start_link()
IO.inspect(process_id)
Counter.increment()
Counter.increment()
result = Counter.get()
IO.puts(result)
