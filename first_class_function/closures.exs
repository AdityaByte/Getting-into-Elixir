# Closures: Holding the reference of the variable is known as the closure.

# As an example let i have created a variable
name = :aditya
# Created lambda which holds the name.
lambda = fn -> IO.puts(name) end
lambda.()

_name  = :somebody # Now the name is pointing to some other data.

# As long as you hold the reference to my_lambda, the variable outside_var is also
# accessible. This is also known as closure: by holding a reference to a lambda, you indirectly hold a reference to all variables it uses, even if those variables are from the
# external scope.

# Note: placing _ after before the name of the variable means right now we are not using it.

