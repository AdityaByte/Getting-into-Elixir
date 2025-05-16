# So after crushing my brain on these things i got to know about something interesting.
# All the values that the variable hold are immutable in elixir just like every other programming language.
# The Variable is actually mutable.
# Naming convention you should follow while naming a variable.
# 1. Should follow the snake case for variable declaration.
# 2. Camel Case is not recommended.
# Variable name can ends with ? and !

# Creating a variable since it is a dynamically typed language we dont need to define the type of it
name = "Elixir" # Variable name is bound to the value "Elixir"
IO.puts(name)
# Rebinding the variable name.
name = "Erlang" # When i do this the actual memory address is not override instead of this a new value "erlang" is dumped at the new memory address and now the variable name points to that memory address.
IO.puts(name)

# Some terminology that you might know in this context.
# In elixir assignment is known as BINDING.
# When you initialize a variable with a value, the variable is bound to that value.

# Note: In elixir everything has a result.
# Note: Variables name can be starts with an underscore.
