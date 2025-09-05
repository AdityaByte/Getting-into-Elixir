DataNodeSupervisor.start_link(:ok)
DataNode.send("This is the main application of elixir\n")
DataNode.receive()
