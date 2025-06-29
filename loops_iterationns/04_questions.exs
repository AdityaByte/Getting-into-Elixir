defmodule Question1 do
  # Here we have to define the base case.
  def print(1), do: IO.puts(1)
  # Later on the recusrive case which do's the main task.
  def print(n) do
    if n > 0 do
      print(n-1)
      IO.puts(n)
    end
  end
end

number = IO.gets("Enter number => ")
Question1.print(
  number
  |> String.trim
  |> String.to_integer
)

defmodule Question2 do
  # Base case
  def sum(0), do: 0
  # Recursive case
  def sum(n) do
    if n > 0 do
      n + sum(n-1)
    end
  end
end

number = IO.gets("Enter number => ")

IO.puts(Question2.sum(
  number
  |> String.trim
  |> String.to_integer
))

