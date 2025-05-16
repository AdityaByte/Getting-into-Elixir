# Read this file after learning modules and functions.
# Sometimes Calling a function from another module can sometimes be cumbersome, because you need to reference the module name.
#If your module often calls functions from another module, you can import that other module into your own.
#Importing a module allows you to call its public functions without prefixing them with the module name.

defmodule MyModule do
  import IO # Importing the I/O module.
  def print_something do
    puts("Elixir is really interesting.") # We can use puts instead of IO.puts
  end
end

MyModule.print_something()

# Kernal Module is imported in each file of elixir

# Alias: An alternative to import is alias, It is a construct that make it possible to reference the module under different name.
# Alias can be useful if the module has a long name.
defmodule MyNewModule do
  alias IO, as: MyIO # Creates an alias for IO
  def foo do
    MyIO.puts("Foo Bar")
  end
end

MyNewModule.foo()

# Another big reason of using alias is that in the case when our application is being complex and you have to refer the different components of the system via full name so in that context we can prefer aliases for shorthand names.
