defmodule MyGenServer do
  @moduledoc """
  GenServer is just a process this module provides several abstract methods
  by which we can manage the process in a more convinient way.
  """
  use GenServer

  # Client side functions through which we can interact with the gen server.

  def start(initial_state) do
    GenServer.start_link(__MODULE__, initial_state, name: __MODULE__)
  end

  # Calling the call and cast methods by creating the client side abstract functions.
  def call do
    GenServer.call(__MODULE__, :sync_method)
  end

  def cast do
    GenServer.cast(__MODULE__, :async_method)
  end

  def call_info, do: Process.send(__MODULE__, :remainder, [])

  def stop do
    GenServer.stop(__MODULE__, :normal)
  end


  # Overriden methods for initalizing the state of the gen server.
  # And other methods for handling the buisness logic.

  @impl true # This tells the programmer of compiler that this is the overriden method.
  def init(initial_state) do
    # This method is used to initalize the state of the gen server.
    # It should return the initial state as {:ok, state} tuple.

    # {:ok, initial_state} # If we are not continuing to any other function.

    # Calling the handle_continue function here.
    {:ok, initial_state, {:continue, :handle_continue_func}} # Returning 3 tuple for calling the handle_continue function thereafter.
  end

  @impl true
  def handle_call(:sync_method, _from, state) do
    # Synchronous method.
    # This method mainly handles the synchronous requests it takes three
    # arguments, the first is the name of the method (for pattern matching) the second is the from tuple which is the process id and the third one is the state.
    # It returns a tuple with updated state and the reply to the caller in the form of {:reply, reply, new_state} tuple.

    {:reply, :ok, state}
  end

  @impl true
  def handle_cast(:async_method, state) do
    # Fire and forget method.
    # Asynchronous method.
    # When we don't want to wait for the reply for the response then we can trigger this method.
    # It updates the state and returns the new state in the form of {:noreply, new_state} tuple.

    {:noreply, state}
  end

  @impl true
  def handle_info(:remainder, state) do
    # It is an asynchronous function.
    # USE CASE: For timeouts and remainders.
    # Any message which is not a gen-server call, cast and system message it handles those kinds of messages.
    # Can be called via Process.send(msg) and Process.send_after(msg).

    IO.puts("This is the handle_info function triggered after 10 seconds rigrously.")
    Process.send_after(self(), :remainder, 10_000)
    {:noreply, state}
  end

  @impl true
  def handle_continue(:handle_continue_func, state) do
    # Synchronous function.
    # handle_continue function is mainly used for doing the tasks after initialization.
    # USE CASE:
    # Suppose you have to fetch the user information from db soo the gen_server doesn't fully start until the data gets fetched from db so in the case it is problematic so we put that kind of stuff inside the handle_continue function.
    # Returns :no_reply with updated state.
    # Note: This function is automatically trigerrred after the init function done its task.
    Process.sleep(5_000) # Doing some heavy tasks.
    IO.puts("Handle continue function is trigerred.")
    {:noreply, state}
  end
end
