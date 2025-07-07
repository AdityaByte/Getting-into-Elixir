# In Complex system, you often need concurrent tasks to cooperate in some way.
# Being isolated processes can share data via message passing.
# In message passing you need to know about these things;
# 1. send function which takes two things process id and the message
# message could be of any form we can use pattern matching
# 2. recieve construct for recieving the message.
# note: mailbox in which we put the message in the fifo order is a queue.

pid = spawn(fn ->
  receive do
    {:message, message} ->
      IO.puts("message is #{message}")
    {:what, value, true} ->
      IO.puts("What is what #{value}")
  end
end)

send(pid, {:message, "Hello world"})
