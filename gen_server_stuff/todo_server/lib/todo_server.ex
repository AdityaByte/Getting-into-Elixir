defmodule TodoServer do
  use GenServer

  # Client side functions.

  def start, do: GenServer.start_link(__MODULE__, [], name: __MODULE__)

  def add(task_name) do
    :ok = GenServer.call(__MODULE__, {:add_task, task_name})
    IO.puts("Task is added successfully.")
  end

  def get_all do
    IO.puts("Fetching all todos..")
    GenServer.call(__MODULE__, :get_all_todo)
  end

  def mark_done(task_id) do
    GenServer.cast(__MODULE__, {:mark_as_done, task_id})
  end

  # Callbacks.

  @impl true
  def init(init_arg) do
    {:ok, init_arg}
  end

  @impl true
  def handle_call({:add_task, task_name}, _from, state) do
    # This handles the task creation.
    new_state = [%{id: generate_task_id(), name: task_name, status: :not_done} | state]
    {:reply, :ok, new_state}
  end

  # Helper function for generating the taskid
  defp generate_task_id, do: "Task-#{:rand.uniform(100) + 100}"

  @impl true
  def handle_call(:get_all_todo, _from, state) do
    Enum.map(state, fn item ->
      IO.puts("TaskID: #{item.id}, TaskName: #{item.name}, TaskStatus: #{item.status}")
    end)
    {:reply, :ok, state}
  end

  @impl true
  def handle_cast({:mark_as_done, task_id}, state) do
    # Asynchronous function mark the task as done.
    new_state = Enum.map(state, fn item ->
      if item.id == task_id do
        %{item | status: :done}
      else
        item
      end
    end)
    {:noreply, new_state}
  end
end
