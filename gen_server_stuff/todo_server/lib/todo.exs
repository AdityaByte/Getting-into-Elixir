a = [
  %{id: 1, name: "aditya"},
  %{id: 2, name: "yeshank"}
]

b = Enum.map(a, fn item ->
  if item.id == 1 do
    %{item | name: "Something"}
  else
    item
  end
end)

IO.inspect(b)
