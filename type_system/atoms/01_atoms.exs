# Atoms: Atoms are literal named constants.
# Atoms constant starts with a colon character.

:an_atom
:another_atom

# It is possible to use spaces in an atom name.
:"an atom with spaces"

# An atom consists of two parts: the text and the value.
# The atom text is whatever you put after the colon character
# I got to know about the atoms underlaying thing: The thing which is written just after the colon is the text and its value too and it gets stored at the atom table at runtime and the variable which refers to the atom value like this name = :aditya so in this case the name doesn't contain the actual text it just contains the reference of the atom table in which the constant aditya is stored.
# They are similar to enums in java which are constants.

name = :aditya

if name == :aditya do
  IO.puts("Equal")
else
  IO.puts("Not equal")
end

