import IO

puts("What's your name?")
name = gets("> ") |> String.trim()

if name == "" do
  puts("Enter a name dude")
else
  puts("Hello #{name}!")
end
