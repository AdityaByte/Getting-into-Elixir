# Defining a default argument to a function with the help of this operator "\\"

defmodule Calculate do
  def area(a, b \\ 1) do
    # String interpolation
    IO.puts("Area is #{a*b}")
  end
end

Calculate.area(10) # passing a single argument the default value for the other is 1
Calculate.area(2,7)
