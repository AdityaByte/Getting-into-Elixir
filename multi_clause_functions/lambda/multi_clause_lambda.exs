# We can also define multiple clause lambda.
# Syntax:
# fn
#   pattern 1 ->
#   pattern 2 ->
# end

test_num = fn
  x when is_number(x) and x < 0 ->
    IO.puts("X is negative")
  0 ->
    IO.puts("x is zero")
  x when is_number(x) and x > 0 ->
    IO.puts("x is positive")
end

number = IO.gets("Enter any number -> ")
test_num.(String.to_integer(String.trim(number)))
