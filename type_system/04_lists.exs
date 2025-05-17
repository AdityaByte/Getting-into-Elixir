# Lists:
# Lists are used to manage dynamic variables, In erlang/elixir lists are basically the singly linked list which has the time complexity of O(n) notation.
# Like if we have to calculate the size of the list we need to fully traverse it.
# List syntax is similar to python lists.

list_of_fruits = ["mango", "strawberry", "guava", "dragon-fruit"]
IO.inspect(list_of_fruits) # Puts is not useful for printing lists cause it only prints string items.
# Finding length of the list.
# For that you need to use the length function inside the kernel module.
IO.puts(length(list_of_fruits))

# Fetching a list element: For dealing with enumerate things there is a module Enum which has some function.
# So if we want to fetch an item from the list Enum.at function is useful.
item = Enum.at(list_of_fruits, 2) # It is also a O(n) operation.
IO.puts(item)

# we can also check a item is in the list with the help of "in" operator.
is_exists = "strawberry" in list_of_fruits
IO.puts("Is strawberry in list #{is_exists}")

# There are some functions in the list module too.
# To manipulate the list item we can use the List.replace_at() function for that.

names = ["aditya", "adi", "abhi"]
IO.puts(Enum.at(names, 2))
names = List.replace_at(names, 2, "nobody") # List are too immutable.
IO.puts(Enum.at(names, 2))

# We can also insert a new item in the list with the help of List.insert_at() function.
names = List.insert_at(names, 3, "somebody")
IO.puts(Enum.at(names, 3))
# If we puts item at the 100 index but list has only 3 items taking as an example then automatically the item gets inserted at last.
# Another way of inserting item at the last of the list is by specifying -1 index.
names = List.insert_at(names, -1, 23)
IO.puts(Enum.at(names, length(names)-1))

# Concating two lists in elixir
# So there is an operator ++ which is used for combining two lists.
l1 = [1,2,4]
l2 = [3,6]
l3 = l1 ++ l2
IO.inspect(l3)
# If you want to do some operation to the enumerable like sorting and all.
# You can use the Enum module it has some sorts of useful functions.
l4 = Enum.sort(l3)
IO.inspect(l4)

# For learning how to iterate over the list items i have to learn about looping statement in this lang.
