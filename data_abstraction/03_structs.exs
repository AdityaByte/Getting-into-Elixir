# In this file we will learn about abstracting higher level datatypes using struct.
# In elixir struct is an another type of map which is being defined inside a module.

# This defines a User struct with three fields.
defmodule User do
  # We can initialize default values out there.
  defstruct name: nil, age: nil, email: nil
end

defmodule Main do
  def main do
    user1 = %User{name: "aditya", age: 21, email: "helloworld@gmail.com"}
    IO.inspect(user1)
  end
end

Main.main()
