# Function Visibility
# When you define a function using the def macro, the function is made public: it can
# be called by anyone else. In Elixir terminology, it’s said that the function is exported.
# You can also use the defp macro to make the function private. A private function can
# be used only inside the module it’s defined in.

defmodule TestPrivate do
  # Public function can be exported anywhere in the code.
  def double(a) do
    sum(a, a)
  end

  # Private function can only used inside the code.
  defp sum(a, b) do
    a + b
  end
end

TestPrivate.double(10)
TestPrivate.sum(10, 20) # Returns an error undefined.
