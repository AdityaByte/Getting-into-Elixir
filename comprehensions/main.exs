# Comprehensions: It's an another construct by which we can iterate over enumerable and can
# transform the enumerable.
# Comprehensions are mainly used for transforming enumerables from one form to another.

list1 = [1, 2, 3]

func1 = fn ->
  for x <- list1 do
    x * x
  end
end

IO.inspect(func1.())

# Let us take another example that we have two list and we have to transform the elements
# and create another new enumerable.

func2 = fn ->
  for x <- list1, y <- list1 do
    {x, y, x * y}
  end
end

IO.inspect(func2.())

# We can do the same task via the range datatype too.
func3 = fn ->
  for x <- 1..9, y <- 1..9 do
    {x, y, x * y}
  end
end

IO.inspect(func3.())

# The result of the comprehension has been a list. But comprehensions can return anything that is collectable. Collectable is an
# abstract term for a functional data type that can collect values.

