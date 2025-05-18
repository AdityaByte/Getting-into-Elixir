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
