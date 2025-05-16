# Module Attributes.
# As per general context attributes are just variables that can hold the value.
# So a question arises in our mind that how would the elixir module attributes are different from other languages.
# So the answer can be defined in many aspects like:
# Like If we define a constant in any other programming language inside a class or a function so the variable's memory is being allocated at compile time but the actual value was filled up at runtime.

# But in elixir when we create a constant or a module attribute something like that
# @nameofattribute Value
# Elixir compiler creates an in memory at the compile time.

# Let us take an example of how it works:
import IO

defmodule Circle do

  @moduledoc """
  This module implements basic circle functions.
  """

  @pi 3.14 # Defines a module attribute.
  # Using the module attribute

  @doc "Computes the area of the circle"
  def area(r), do: @pi*r*r
  @doc "Computes the circumference of the circle"
  def circumference(r), do: 2*@pi*r
end

puts("Area of circle having radius 4 is #{Circle.area(4)}")
puts("Circumference of circle having radius 4 is #{Circle.circumference(4)}")

# Note: The important thing about the @pi constant is that it exists only during the compilation of the module, when the references to it are inlined.
# Note: Moreover, an attribute can be registered, which means it will be stored in the generated binary and can be accessed in runtime.

# Elixir registers some module attributes by default like--
# @moduledoc and @doc can be used to provide documentation for the modules.
