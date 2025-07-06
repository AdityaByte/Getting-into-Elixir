# Let we have some db queries.
run_query = fn(query_def) ->
  :timer.sleep(2000)
  IO.puts("#{query_def} result")
end

# The result of the function will displayed after 2 seconds.
# run_query.("query 1")

# So think of the same task which takes 2 seconds even after optimization so if we want
# to trigger 5 queries
# 1..5
# |> Enum.map(
#   &run_query.("query #{&1}")
# )

# Obviosuly, this is neither performant nor scalable. Assuming the queries are already
# optimized so make this code faster the only thing we can do is run the things concurrently.

# Now the real chapter begins.
# Creating Processes:

# 1. We can create a process via the spawn/1 arity function which takes a zero arity lambda that
# will run in the new process.
# 2. After the process is created the spawn will return immediately with a PID (Process ID)

# Doing the same task via processes.
# processID = spawn(fn -> run_query.("query 1") end)
# IO.inspect(processID) # It returns a process Id something like that - #PID<0.97.0>

# If we have to see the output of the running process we need to wait the main thread till we gets the output for 2 seconds
# :timer.sleep(3000)

# Note: The PID which was returned immediately is used for communicating with that process.

# Now if we want to do the same task via the processes we can do.

async_query = fn(query_def) ->
  spawn(fn -> run_query.(query_def) end)
end

1..5
|> Enum.map(
  &async_query.("query #{&1}")
)

:timer.sleep(3000) # Waiting for 3 seconds till we gets the result.
# The order is not manditory but for small data it could be in a order.
