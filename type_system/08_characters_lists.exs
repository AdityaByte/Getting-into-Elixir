# Now we are talking not that much less about characters
# Characters are represented by single quotes.

char1 = 'ABC' # But its deprecated now.
IO.puts(char1)

# Similar to strings for declaring the characters we have the sigil for character too: ~c
char2 = ~c(hello world)
IO.puts(char2)

# Using lists
char3 = [65, 66, 67]
IO.puts(char3) # It only takes string so it converts the bytes to string and print them.
