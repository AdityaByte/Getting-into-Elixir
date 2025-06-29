# In this example we are dealing with how to calculate the sum of the list elements using recursion.

defmodule Test do
  def sum([]), do: 0 # This is the base case which ends the recursion.
  def sum([head | tail]) do # This is the recursive case.
    head + sum(tail)
  end
end

result = Test.sum([10,20,30])
IO.puts(result)
