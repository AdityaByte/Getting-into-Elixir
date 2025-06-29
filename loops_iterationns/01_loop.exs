# Data is immutable in elixir so traditional loops are not there in this lang.
# Instead of that looping tasks and doing tasks repeatedly is done through recursive functions.

# Function for printing n positive natural numbers.
defmodule Test do
  def print(1), do: IO.puts(1) # Base Case
  def print(n) do
    if n > 0 do
      print(n-1)
      IO.puts(n)
    else
      IO.puts("Negative number not allowed")
    end
  end
end

n = IO.gets("n -> ")
  |> String.trim()

case Integer.parse(n) do
  {number, ""} -> Test.print(number)
  _ -> IO.puts("n is not a number")
end
