defmodule SupervisorStuff do
  @moduledoc """
  Supervisor are used to monitor processes they let them fail and restart them
  as per the defined strategy.

  # Strategies:
  1. :one_for_one: If one process fails it restart that process only.
  2. :one_for_all: If one process fails it restarts all the processess.
  3. :simple_one_for_one
  and many other I dont know just google it.

  """
  use Supervisor

  # client side methods.
  def start do
    # start_link used to start the supervisor.
    # Takes three args, 1. Module name 2. initial args 3. name of the supervisor.
    Supervisor.start_link(__MODULE__, :ok, name: :my_supervisor)
  end

  def stop do
    Supervisor.stop(:my_supervisor, :normal)
  end


  # callbacks.
  @impl true
  def init(_init_arg) do
    # Have to define the childrens can be a isolated process or a supervisor itself.
    children = [
      MyGenProcess
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end


# Testing. (Kinda useful when we run and test)
# Process.whereis(process_name) - For knowing the PID of the process.
# Process.exit(process_id) - For stopping the process.
