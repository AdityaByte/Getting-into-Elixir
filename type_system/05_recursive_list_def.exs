# Recursive List Defination.
# Under the hood list are recursive structures in elixir.
# [head, tail] --> [head, tail] --> [head, tail]

# So we can also create the list in this way too like
# Syntax variable_name = [head | tail]
# Head -> could be an element
# Tail -> it itself a list if the list is empty then there could be an empty list at the end.
# Tail could also be of any datatype but its for special purpose and we call it as a improper list cause we can't apply the standard list operations to it.

list1 = [10, []]

# So printing of a list is done by the IO.inspect() function.

IO.inspect(list1)

list2 = [20 | list1] # There is an another way of concating two lists.

IO.inspect(list2)

another_example = [20 | [30 | [40 | []]]] # This is how the recursive list works
IO.inspect(another_example) # [20, 30, 40]

# Although we can't use it in the real project but it generally gives us the idea of the recusive structure of the lists.

# Printing the head of the list
# hd function.
IO.inspect(hd(another_example))

# Printing the tail of the list
# tl function
IO.inspect(tl(another_example))


# Another example
one_more_example = [12, :value, true, nil]
one_new_example = [:aditya | one_more_example]
IO.inspect(Enum.sort(one_new_example))

# The all operations are done via O(1) time complexity.
