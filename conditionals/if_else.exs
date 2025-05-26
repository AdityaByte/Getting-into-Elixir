# If and else are more likely macros in elixir
# Since we can handle conditions with the help of the guards and lambdas so why do we need that.
# We need that because creating an anonymous function every time for a condition it might seems like a heavy task so
# instead of that if else macro make this task  simpler.

# In functional programming every expression evaluates and returns something so the if and else condition also returns something
# If only if condition is defined then if the condition is true the result of the expression inside if is returned else :nil atom is returned ok and if else condition is defined and the condition is being falsy then in this case else expression result is returned.

number = 10

result = if number < 20 do
  IO.puts("Number is smaller than 20")
else
  IO.puts("Number is greater than 20")
end


IO.puts(result) # Returns :ok

# We can explicitly returns values too.
name = IO.gets("Enter name -> ")

result2 = if String.trim(name) != "" do
  "Name exists"
else
  "Not exists"
end

IO.puts(result2)

# Same we do do it one liner too.

data = IO.gets("Value -> ")
result3 = if String.trim(data) != "", do: :valid ,else: :invalid

IO.puts(result3)

# We can also do it via unless macro too
# Unless is kinda similar to if not.

data = IO.gets("Another data -> ") # Now data is bound to another data
unless String.trim(data) == "", do: IO.puts("Valid data"), else: IO.puts("Invalid data")
# Upper statment is similar to unless the data is not empty do this otherwise do this ok.

# So creating an example function max function which returns the maximum value ok
defmodule Test, do: def max(a, b), do: if a >= b, do: a, else: b

result4 = Test.max(10, 90)

IO.puts(result4)

# Also could be do by using a lambda too
max = fn a, b -> if a >= b, do: a, else: b end
