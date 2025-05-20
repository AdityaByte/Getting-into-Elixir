# Keyword list:
# It is a special type of list in which the each element is the two element tuple and the
# First element of the tuple is an atom and the Second element is of any type.

keyword_list = [
  {:monday, 1},
  {:tuesday, 2},
  {:wednesday, 3}
]

value = Keyword.get(keyword_list, :monday)
IO.puts(value)

# Another syntax for defining a keyword list is that
days = [
  monday: "mon",
  tuesday: "tue",
  wednesday: "wed"
]

IO.puts(Keyword.get(days, :monday))
# Similarly we can get the item from the list using bracket.
IO.puts(days[:wednesday]) # Returns value
IO.puts(days[:nobody]) # Returns nil 

# Keyword list are used for storing less data cause this has the same time complexity of lists.
