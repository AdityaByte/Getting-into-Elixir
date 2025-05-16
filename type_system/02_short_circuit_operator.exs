# Short circuit operators
# ||, && and ! are known as short circuit operators.

# let us take an example.

# 1. The || Operator returns the first value which isn't falsy
IO.puts(:nil || false || "aditya" || 10) # It returns aditya cause it is the first truthy value

# IF all the values are false then it returns the last expression.
IO.puts(:nil || !true || false)

# 2. The Operator && returns the second value only when the first expression is truthy. Otherwise it returns the first expression without evaluating the second expression.
IO.puts(true && "Hello world") # Returns the Hello world
IO.puts(false && "Falsy value") # Returns false


# Use Case: Short circuiting can be used for elegant opeation chaining for example:
# read_cache || read_disk || read__from_db

# Same we can use the && operator for certain condition met
# database_value = connection_established? && read_value # ? -> It can throw runtime error.
