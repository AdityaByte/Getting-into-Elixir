# In this file you will learn about what is the data abstraction
# and how do it helps in what things.
# Data abstraction is nothing it just hiding the complex implementation and giving a
# simpler interface by the user would easily use the functionality.

# Like you have studied about how we do data abstraction in Object Oriented languages
# we do it simply with classes and method inside them
# Because data is immutable in functional languages we can't do the same but
# we can do data abstraction in elixir via modules and the function inside them

# let us take an example where the HashDict is an abstracted function which is built on
# the top of Map/Dict
# Since this function is deprecated we can do the same task via the Map module too.
# days = HashDict.new()
#   |> HashDict.put(1, "Monday")
#   |> HashDict.put(2, "Tuesday")

# IO.inspect(days)

days = Map.new()
  |> Map.put(1, "Monday")
  |> Map.put(2, "Tuesday")

IO.inspect(days)
