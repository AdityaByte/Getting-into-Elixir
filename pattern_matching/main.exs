# Unlike other languages like java,python
# The story of the Assignment Operator is more in elixir than you might know.
# The = operator in elixir is known as the match operator.
# It is used for the comparision of the values

# Let us take an example like we know elixir dont have boolean types the only thing is the atom so :true = true
# But we have to check this expression is valid or not so we can use the match operator it matches the value of the both left and right hand side value and returns a result just like every expression in this lang returns a result.
# We also says that in elixir that the left hand side value is bound to right hand side values.
# Variables can be bounded to any types of value cause their primary objective is that storing values.

# Left side value :> Pattern
# Right side value :> Expression resolved to a term.

true = :true # Returns true

1 = 2 # Returns false cause 1 cannot be 2 , It will throws up a match error.

# Matching maps
person = %{name: "aditya", age: 21} # person is bound to an object.

# so if we cross check like this
# %{name="aditya", age: 21} = person  # In IEX it will returns no match error cause it is bounded and the expression at the right evaluates to it's value.

# Matching tuples
{name, age} = {"aditya", 21}

# When we do this
"aditya" = name # It will return no match error.


# Matching constants
1 = 1 # No match error

# Variables in patterns : Whenever there is a variable at the left hand side it always matches to the right hand side.
# In addition, the variable is bound to the term it matches.
# if we dont want to use a value like a tuple has two values name and age but you only wants the name in this case you have to use the underscore _ .
{name, _} = {"aditya", 25}


# Matching list
[one, two, three] = [1, 2, 3]

