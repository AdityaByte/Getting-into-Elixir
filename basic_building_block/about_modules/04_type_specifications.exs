# Type Specifications
# Type specifications (often called typespecs) are another important feature based on attributes. This feature allows you to provide type information for your functions, which can later be analyzed with a static analysis tool called dialyzer.

# Let us take an example of Circle module
defmodule Circle do
  @moduledoc "Implement circle specific functions"
  @pi 3.14

  # Here you use the @spec attribute to indicate that both functions accept and return a number.
  # Typespecs allow you to document your functions better.
  @spec area(number) :: number
  def area(r), do: @pi*r*r

  @spec circumference(number) :: number
  def circumference(r) do
    2*@pi*r
  end

end
