# Maps
# Maps are the key value pairs
# Key ---> atom
# Value could be anything.

# Syntax : var_name = %{key=>value...}
person_info = %{:name=> "aditya", :age=> 21, :occupation=> "Software developer"}
IO.inspect(person_info)

# Another syntatic sugar for declaring that.
person_info = %{name: "abhi", age: 21, works_at: "Discord"}
IO.inspect(person_info)

# Another way of creating a map
student = %{"name": "aditya", "age": 21} # We can use this but keep in mind that the keywords are always atoms at the end it gets resolved to the atom
IO.inspect(student)
IO.inspect(student[:name])


# Retriving a field from the map
# First way:
IO.inspect(person_info[:name])
# Another way:
IO.inspect(person_info.works_at)


# Changing the field of the map
my_map = %{fav_fruit: "mango", fav_color: "black"}
IO.inspect(my_map)

# If we want to change the fav fruit so this is the syntax
my_map = %{my_map | fav_fruit: "aamba"} # All the types are immutable keep that in mind.
IO.inspect(my_map)

# We can change multiple fields to it also.
my_map = %{my_map | fav_fruit: "aamras", fav_color: "bhagwa_rang"}
IO.inspect(my_map)

# If we want to add a field to the map we can use the Map module and the put function inside that module.
my_map = Map.put(my_map, :fav_car, "tarzen wonder car")
IO.inspect(my_map)

# We can use the another method for putting a item to the map.
my_map = Dict.put(my_map, :fav_digit, 10) # But it's deprecated.
IO.inspect(my_map)
