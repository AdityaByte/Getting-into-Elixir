# Elixer don't have a dedicated boolean type. Instead the atoms :true and :false are used as synthatic sugar.
# The term boolean is used in elixir to denote an atom that has a value of either :true or :false.

IO.puts(:true == true)
IO.puts(:false == false)

# As syntactic sugar, Elixir allows you to reference these atoms without the starting colon character
IO.puts(true and false) # Returns false.
IO.puts(true or false)
IO.puts(not true)
