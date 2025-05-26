# cond is similar if if - else if statement
# Cond is also a macro
# Inside this macro we can write multiple expression and the expression which evaluates to the truthy value
# first is executed first.
# Syntax cond do
  # expression 1 ->
  # expression 2 ->
  # expression n ->
  # true -> default clause if above expression are all falsy then this evaluates.
# end

x = 10

cond do
  x == 10 -> IO.puts("X is 10")
  x < 10 -> IO.puts("smaller than 10")
  true -> IO.puts("greater than 10") # Default clause similar to the else
end

# Ensure to write a true clause it every expression is falsy then it would return an error if no clause is evaluated.

# Example: max function using the cond macro
defmodule Test do
  def max(a,b) do
    cond do
      a >= b -> a
      a < b -> b # Otherwise we can do true -> b too.
    end
  end
end

result = Test.max(100, 90)
IO.puts(result)
