# Function Arity
# Arity is a fancy name for the number of arguments a function receives. A function is uniquely identified by its containing module, its name, and its arity.
# Note:  this function is often called Rectangle.area/2, where the /2 part denotes the function’s arity.

# Here a lower arity function is implemented in terms of the higher one.
defmodule Rectangle do
  # Function with 1 arity
  def area(a), do: area(a, a) # Rectangle.area/1
  # Function with 2 arity
  def area(a, b), do: a * b # Rectangle.area/2
end

# Note: As you can see, these two functions act completely differently. The name might be overloaded, but the arities differ, so we talk about them as two distinct functions, each having its own implementation.

result1 = Rectangle.area(10)
result2 = Rectangle.area(1,2)

IO.puts(result1)
IO.puts(result2)
