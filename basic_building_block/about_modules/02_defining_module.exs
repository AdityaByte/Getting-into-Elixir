# Defining out own module
# You can use the defmodule macro its not a keyword since we can call it as the keyword for understanding.
# Syntax
# defmodule NameOfModule do
  # Body
# end

# Naming: It should follows the PascalConvention.

defmodule Math do
  # Functions inside the module.
  def sum(a, b) do
    a + b # Implicitly it returns out.
  end
end

result = Math.sum(10,20)
IO.puts(result)

# Despite of one module you can define multiple modules in a program.
# It is similar to classes just like in OOP langs.

# String module which do string operations.
defmodule StringModule do
  def concatMe(str1, str2) do
    # String concatination is not done by + operator in elixir.
    str1 <> str2
  end
end

fullname = StringModule.concatMe("aditya", " pawar")
IO.puts(fullname)
