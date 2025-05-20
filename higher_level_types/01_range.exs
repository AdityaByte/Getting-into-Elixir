# The Type system that we read before is all the erlang types cause the elixir is just an extension to the erlang and it runs on the beam vm.
# Elixir provides some higher level abstraction types such as range, keyword, hashdict, hashset.

# Range is an abstraction that allows we to represents a range of numbers. Special syntax ..

range = 1..4
IO.puts(-1 in range) # Returns false if it not falls into it.
IO.puts(4 in range) # Returns true if 3 falls into it.

# Ranges are enumerable so we can enumerate over it using the Enum.each/2 function.
Enum.each(
  range, # Enumerable.
  &IO.puts/1 # Returns 1 2 3 4
)

# Note: Under the hood its just a map with boundaries million numbers range it just a simple map.
map = %{lower: 1, upper: 4} # something like that.
