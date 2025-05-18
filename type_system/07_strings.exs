# Strings:
# Since elixir doesn't have a built in string type.
# Strings are generally the represented by the binary types or the list types.
# A string literal is kept inside the double quotes.

str = "This is the string"
IO.puts(str)

# Embedded string expression : string interpolation.
str1 = "Value of pie is #{3 + 0.14}"
IO.puts(str1)

# we can also use the escape sequence characters in it too.
str2 = "\\Name:\t \"Aditya\"\n Hell\bo"
IO.puts(str2)

# Multi line string
str3 = " ---->
Hey dude
whats going on"
IO.puts(str3)

# Elixir provides another syntax for string declaration so called as: sigils.
# In this upwork you have to enclose the string inside the ~s()

sigilsString = ~s(This is the sigils string)
IO.puts(sigilsString)

# Siglis supports the string interpolation, escape sequence and it can useful when we have to put the double quotes in the string.
str4 = ~s(someone{me} "Real engineers don't do frontend stuff" #{10+90})
IO.puts(str4)

# There is an upper version of the sigils too ~S() which do not supports string interpolation and all.
str5 = ~S(value of pie is #{3+0.14} \t \n)
IO.puts(str5)

# Heredocs string: Another syntatic sugar for handling the multiline strings.
str6 = """
  Heredocs must end on its own line """ \t Hello world #{10*78}
"""
IO.puts(str6)

# Since strings are binary we can concate them with the help of this operator <>
str7 = "Hello " <> "world" <> ", I am aditya"
IO.puts(str7)
