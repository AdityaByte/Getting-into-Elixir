# In elixir functions are the first class citizen means they can be assigned to the variable.
# Here, assigning a function to a variable doesn’t mean calling the function and storing
# its result to a variable. Instead, the function definition itself is assigned, and you can
# use the variable to call the function.

# To create a first class function you can use the fn construct.
# Since here the function is not bound to a global name we call it as "anonymous function" or "lambda".
square = fn(x) ->
  x * x
end

# Calling this function by specifying the variable name and the . which specify that it holds a lambda function and it helps in distinguishing between normal named functions and lambda ones.
IO.puts square.(10)


# we can also define a lambda function in a single line too
print_element = fn(element) -> IO.puts(element) end # defines the lambda

Enum.each(["aditya", "lakshya", "sourabh"], print_element) # passes the lambda to the Enum.each()

# We don't need a temporary variable to pass the lambda to the Enum.each function.
Enum.each(
  [1,2,3,4,5,6],
  fn(x) -> IO.puts("Square of #{x} is #{x * x}") end
)

# Another syntatic sugar for the anonymous lambda function is that &IO.puts/1
# There is the more compact lambda defination where you don't need to create the anonymous function each element will be iterate and prints out.
# & (Ampersand) Operator also known as the capture operator.
# So its the full module name, the function name and the arity of the function.
Enum.each(
  ["hello", "aditya"],
  &IO.puts/1
)


# Lut us take an another example.
lambda = fn(x, y, z) -> x * y + z end
# For calling this lambda
IO.puts(lambda.(1, 2, 3))

# we can make it more compact with the help of capture operator like this
lambda1 = &(&1 * &2 + &3)
# This snippet creates a three-arity lambda. Each argument is referred to via the &n placeholder, which identifies the nth argument of the function.

IO.puts(lambda1.(1,2,3))
