# Defining the collectable : A Map for storing the result.

# Here we are explicitly defining a collectable.
multiplication_table =
  for x <- 1..4, y <- 1..4, into: %{} do
    {{x, y}, x * y}
  end

IO.inspect(multiplication_table[{2, 4}])

# Note: Notice the into option, which specifies what to collect. In this case, it’s an empty map
# %{} that will be populated with values returned from the do block.

# Comprehensions filters
addition_table =
  for x <- 1..5, y <- 1..5, x <= y, into: %{} do
    {{x, y}, x + y}
  end

IO.inspect(addition_table[{1,4}]) # Returns 5
# Since we specify the condition out their the value of x should always be smaller than y so if the value is greater the
# result would be nil.
IO.inspect(addition_table[{3,2}]) # Returns nil
