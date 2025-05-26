# Multi Clause Functions:
# Elixir allows you to overload a function by specifying multiple clauses.
# If you provide multiple defination of a function with same arity it is said the function has multiple clauses.

defmodule Geometry do
  def area({:rectangle, a, b}) do # First clause of area/1
    a * b
  end

  def area({:square, a}) do # Second clause of area/1
    a * a
  end

  def area({:circle, r}) do # Third clause of area/1
    r * r * 3.14
  end
end

IO.puts(Geometry.area({:rectangle, 10, 20}))
IO.puts(Geometry.area({:square, 30}))
IO.puts(Geometry.area({:circle, 70}))
