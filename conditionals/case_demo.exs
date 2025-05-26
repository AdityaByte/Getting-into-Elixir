# Case is also a macro.
# General syntax of case is:
# case expression do
#   pattern1 ->
#   pattern2 ->
#   _ -> # This is the default clause.
# end
# The term pattern defines it works on pattern matching

defmodule Test do
  def max(a,b) do
    case a >=b do
      true -> a # When the above expression evaluates if it return true then it matches to this pattern and a is returned.
      false -> b # Else b is returned.
    end
  end

  def min(a,b) do
    case a < b do
      true -> a
      false -> b
    end
  end
end

a = String.to_integer(String.trim(IO.gets("Enter a: ")))
b = String.to_integer(String.trim(IO.gets("Enter b: ")))

maxValue = Test.max(a, b)
IO.puts("Max value: #{maxValue}")

minValue = Test.min(a, b)
IO.puts("Min value: #{minValue}")
