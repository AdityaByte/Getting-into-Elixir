# Guards:
# Guards are an extension of the basic pattern-matching mechanism. They allow you
# to state additional broader expectations that must be satisfied for the entire pattern to
# match.
#  A guard can be specified by providing the when clause after the arguments list. This
# is best illustrated by example. The following code tests whether a given number is positive, negative, or zero.

defmodule TestNum do
  def test(x) when x < 0 do
    :negative
  end

  def test(x) when x > 0 do
    :positive
  end
end

result1 = TestNum.test(10)
IO.puts(result1)

result2 = TestNum.test(-10)
IO.puts(result2)
