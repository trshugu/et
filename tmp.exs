




# for n <- [1,2,3,4,5], rem(n,2) == 1, do: n*n


defmodule Fun do
  def fib(0), do: 0
  def fib(1), do: 1
  
  def fib(n) do
    fib(n-2) + fib(n-1)
  end
end

# IO.puts Fun 5





# [1,a] = [1,2]
# IO.puts a



# IO.puts "Hell World"
