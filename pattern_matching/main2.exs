# Match operator is also used for destructuring complex data types.
# Like we have a tuple data

data = {"elixir", :programmer, 101}

# If we want to destructure it we can do it like this
{name, title, age} = data

IO.puts("Name: #{name}")
IO.puts("Title: #{title}")
IO.puts("Age: #{age}")

# We can also destructure map data types

person = %{:name => "aditya", :age => 21}
%{name: name, age: age} = person

IO.puts("Name of person: #{name}")
IO.puts("Age of person #{age}")

# Some things could also be done like this.

data2 = %{dude: "perfect"}
# %{idk: idk} = data2 # We can't do this cause the first clause is an atom so :idk != :dude so it throws an error.
# Instead of that you can do this.
%{dude: value} = data2
IO.puts("Value of dude: #{value}")


# We can match more complex patterns like this although it's not been that complex.
data3 = [
  %{
    header: "application/json" # This is the map
  },
  %{
    header: "text/plain",
    body: [
      {
        "response", "ok"
      },
      {
        "response", "valid"
      }
    ]
  }
]
# So above is the more complex data structure we need to print out the response ok valid and ok.

[_, %{body: [resp1 = {"response", "ok"}, resp2 = {"response", "valid"}]}] = data3

IO.puts("Response ok is #{inspect(resp1)}")
IO.puts("Response ok is #{inspect(resp2)}")
