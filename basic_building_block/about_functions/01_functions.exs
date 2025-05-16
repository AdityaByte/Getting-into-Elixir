# Must read this.
# A function must always be a part of a module. Function names follow the same conventions as variables: they start with a lowercase letter or underscore character, followed by a combination of alphanumerics and underscores.
# As with variables, function names can end with the characters ? and !. The ? character is often used to indicate a function that returns either true or false. Placing the character ! at the end of the name indicates a function that may raise a runtime error.

# Note: NOTE Notice that defmodule and def aren’t referred to as keywords. That’s because they’re not! Instead, these are compilation constructs called macros.

# let we have a function which calculates the area of the rectangle.
defmodule Rectangle1 do
  def area(a, b) do # Function declaration.
    a * b # Function body.
  end
end

IO.puts(Rectangle1.area(10, 20))

# To make the upper code more readable and less clumsy.
# If a function definition is short, you can use a condensed form and define it in a single line.
defmodule Rectangle2 do
  def area(a, b), do: a*b # Now more short.
end

IO.puts(Rectangle2.area(10, 20))

# If the function takes no arguments then you can avoid the paranthesis too.
defmodule Rectangle3 do
  def print_info, do: IO.puts("This is the function of the reactangle.")
end

Rectangle3.print_info()

# Note: Parentheses are optional in Elixir, so you can omit them
# But my advice do not omit them.
