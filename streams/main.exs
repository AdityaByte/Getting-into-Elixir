# Streams:
# Streams are the special kind of enumerables that can be useful for doing lazy composable operations
# over anything enumerable.
# What do you mean by lazy composition ?
# That means the stream operations like map, filter and sorted are not executed immediately.
# They are composed in a pipeline.
# Only when a terminal operation like collect(), forEach(), or reduce() is called, the entire chain is executed.

# Before studying streams let us do a task that
# we have a list of employees and we have to print them along with the order (index) so we can do it using Enum functions.
# with_index is an enum function which takes a list and return a tuple with first item as the actual value and the other is the index.

employees = [:aditya, :hemraj, :kabir, :lakshya]

_task =
  employees
  |> Enum.with_index()
  |> Enum.each(fn {employee, index} ->
    IO.puts("#{index + 1}. #{employee}")
  end)

# As per the upper task is bit cleaner
# and it's clean to read somehow there are still some problems with this code.
# Performance issue: the Enum.with_index() function iterates over the whole list for producing another list and
# same goes with the Enum.each() function.
# So it could be better if you do the both operations in a single pass like updating the index and print the value with index too.

# Let us take a look how the stream works.

stream1 =
  [1, 2, 3]
  |> Stream.map(fn x -> 2 * x end)

# It doesn't print's out the result.
IO.inspect(stream1)
# Because a stream is a lazy enumerable, the iteration over the input list ([1, 2, 3]) and
# the corresponding transformation (multiplication by 2) haven’t yet happened.
# Instead, you get the structure that describes the computation.

# To make the iteration happen, you have to send the stream to an Enum function,
# such as each, map, or filter. You can also use the Enum.to_list/1 function, which
# converts any kind of enumerable into a list:

# Prints [2,4,6]
IO.inspect(Enum.to_list(stream1))

# Must read:  The laziness of streams goes beyond iterating the list on demand. Values are produced one by one when Enum.to_list requests another element.
# For example, you can use Enum.take/2 to request only one element from the stream:

# Prints [2]
IO.inspect(Enum.take(stream1, 1))

# Going back to the example we can do the same task with the help of using streams.
employees
|> Stream.with_index()
|> Enum.each(fn {employee, index} ->
  IO.puts("#{index + 1}. #{employee}")
end)
