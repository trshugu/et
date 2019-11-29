


# https://devhints.io/elixir
# for n <- [1,2,3,4,5], rem(n,2) == 1, do: n*n







"""

# 再代入防止 →なんかちがう・・・
IO.puts "あああ"

a = "いいい"
IO.puts to_string a
a = "eee"
IO.puts a

b = "うううう"
IO.puts b




defmodule Fun do
  def fib(0), do: 0
  def fib(1), do: 1
  
  def fib(n) do
    fib(n-2) + fib(n-1)
  end
end

# IO.puts Fun.fib(10)



defmodule Greeter do
  def greet(name) do
    message = "Hello, " <> name <> "!"
    IO.puts message
  end
end


# Greeter.greet("world")



1..10
|> Enum.map(fn(x)-> x * x end)
|> Enum.filter(fn(x)->x<40 end)
|> IO.inspect




# [1,a] = [1,2]
# IO.puts a


# IO.puts "Hell World"
"""


