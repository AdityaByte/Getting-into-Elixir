# Tuples in elixir
# Tuples are something like untyped structures, or records, and they’re most often used to group a fixed number of elements together.
# Tuples is the collection of dynamic data types.
# Syntax: variableName = {...values...}

# Let us creating a tuple.
person = {"Aditya", 21}
# IO.puts(person) # In elixir the compiler don't know how to print the tuple directly so it gives an error.

# Tuple items are indexed.
# If we want to access the items of the tuple we have to use a kernel function for that, as we know the kernel module is auto imported.
# elem(first-parameter:tuple, second-paramter:index)

name = elem(person, 0)
IO.puts(name)

age = elem(person, 1)
IO.puts(age)

# Since every type in elixir is immutable if we wants to change the data of the tuple so that it returns a new datatype and we can make the variable to rebind to that datatype.
# So for that there is a function in the kernel module known as put_elem
# syntax: put_elem(tuple, index, new_value)

person = put_elem(person, 0, "Yeshank") # Here it returns a new tuple so for memory optimization we need to rebind the old tuple to the new tuple.
{name, age} = person
IO.puts("Name: #{name}, Age: #{age}")
