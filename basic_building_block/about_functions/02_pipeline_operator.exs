# Pipeline Operator:
# Given that Elixir is a functional language, you often need to combine functions, passing the result of one function as the argument to the next one. Elixir comes with a built-in operator |>, called the pipeline operator.

defmodule MyModule do
  # The task it do first the num returns the num value to the next function as the first argument then it make it absolute and pass the absolute value as an argument to the next function the next function converts it to the string and returns the value and pass it to the next function then it just prints out the string.
  def do_task(num), do: num |> abs |> Integer.to_string |> IO.puts
end


# For more readability we can write it as:
defmodule MyModule2 do
  def do_task(str) do
    str
    |> String.to_integer
    |> IO.puts
  end
end


MyModule.do_task(-10)
MyModule2.do_task("50")
