# In this file we learn about how to simply abstract a user created datatype.
defmodule TodoList do
  # New function which instantiate the list.
  def new, do: Map.new()

  # Function for updating or adding enteries to the List.
  def add_entry(todo_list, date, title) do
    Map.update(
      todo_list,
      date,
      # If no value is present then the initial value is used other updater lambda is called.
      # This was the initial value
      [title],
      fn titles -> [title | titles] end
    )
  end

  # Function for fetching enteries from the list.
  def entries(todo_list, date) do
    Map.get(todo_list, date, [])
  end
end

todo_list =
  TodoList.new()
  |> TodoList.add_entry({01, 07, 2025}, "Learning elixir data abstraction")
  |> TodoList.add_entry({01, 08, 2025}, "Acquiring a genuine internship")

IO.inspect(TodoList.entries(todo_list, {01, 07, 2025}))
