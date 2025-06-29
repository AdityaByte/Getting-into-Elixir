# Higher Order functions
# A higher-order function is a fancy name for a function that takes function(s) as its input and/or returns function(s)

func = fn ->
  Enum.each(
    [1, 2, 3],
    # Here we are passing another function as an argument of another function.
    fn x -> IO.puts(x) end
  )
end

func.()

# Map function for mapping the values and returning a different list.
func1 = fn ->
  Enum.map(
    [1, 2, 3],
    fn x -> 2 * x end
  )
end

IO.inspect(func1.())

# Filter function for filtering the values
func2 = fn ->
  Enum.filter(
    [1, 2, 3],
    fn x -> rem(x, 2) == 1 end
  )
end

IO.inspect(func2.())

# The same above task you can also do it via the capture operator
func3 = fn ->
  Enum.filter(
    [1, 2, 3, 4, 5, 6, 7],
    &(rem(&1, 2) == 1)
  )
end

IO.inspect(func3.())

# Reduce function
# Reduce function is often used for transforming the value.
# Like in the imperative languages we do this for reducing or transforming the values.
# Writing the code which illustrate how the same task we do in impretive languages.
# var sum = 0; # sum is the accumulator
# [1,2,3].forEach(function(element) {
#   sum += element;
# })
# console.log(sum)
# this is how we do the reducing task in other languages now take a look on how we do the same task in the elixir way.

# Enum.reduce(
#   enumerable,
#   initial_accumulator,
#   fn(element, accumulator) ->
#     ... logic ...
#   end
# )

func4 = fn ->
  Enum.reduce(
    # enumerable
    [1, 2, 3, 4],
    # initial state of accumulator
    0,
    fn element, sum ->
      # This statement incrementally updates the accumulator.
      element + sum
    end
  )
end

# Return 10
IO.inspect(func4.())

# Despite from comming me from an imperitive background it helps me to think that lambdas are just regular functions which
# are called at each iterations.

# We can reduce the same function func4 more compact like this.
func5 = fn -> Enum.reduce([1, 2, 3], 0, &+/2) end
IO.inspect(func5.())

# In the below example we do a more in the reduce.
func6 = fn e ->
  Enum.reduce(
    e,
    0,
    fn
      elem, sum when is_number(elem) ->
        sum + elem

      _, sum ->
        sum
    end
  )
end

list1 = ["aditya", 10, 2, :hello, 12.3, true]
IO.inspect(func6.(list1))
