defmodule Test do
  def printTerm(n) do # this function is the client interactive function.
    print(n)
  end

  defp print(1) do
    IO.puts(1)
  end

  defp print(n) do
    IO.puts(n)
    n = n-1
    print(n)
  end

end


Test.printTerm(10)
