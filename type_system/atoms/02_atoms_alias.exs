import IO
# Aliases : There is the another syntax for atom constants.
# You can emit the colon and begin with the Uppercase.

val = AnAtom # This is a constant atom.
# This is called an alias and at runtime it's transformed into :"Elixir.AnAtom"
puts(val == :"Elixir.AnAtom")
# When you use an alias, the compiler implicitly adds the Elixir. prefix to its text and inserts an atom there
puts(AnAtom == Elixir.AnAtom)
