defmodule Aditya do
  def say_hi(person) do
    IO.puts("Aditya is greeting #{person}")
  end
end

# Here i have defined a module Named Aditya
# So the module name Aditya is an alias for the atom under the hood its get's converted to
# Aditya == :"Elixir.Aditya"
# And when we compiles the source file its get converted to the bytecode .beam
# File became -> Elixir.Aditya.beam for this one.


# can get the path by calling the erlang code module's get_path function.
# :code.get_path()

# Calling a function dynamically
# This can be done through the apply(modulename, functionatom, arguments) in the kernel module.
apply(IO, :puts, ["Dynamic function call."])
