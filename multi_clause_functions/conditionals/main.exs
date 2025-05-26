# We can also do conditional using the multi clause lambda too.
# Example

# let the user inputs the age and we have to tell him that he can drive or not.
age = String.to_integer(String.trim(IO.gets("Enter age: ")))

show_info = fn
  x when x < 18 and is_number(x) -> IO.puts("You can't driver underage")
  x when x >= 18 and is_number(x) -> IO.puts("You can drive dude")
end

show_info.(age)
