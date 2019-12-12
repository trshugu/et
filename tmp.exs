# https://devhints.io/elixir
# for n <- [1,2,3,4,5], rem(n,2) == 1, do: n*n









"""

import Map
m = %{name: "aaa"}


m |> pop(:name)


alias Foo.Bar, as: Bar
alias Foo.Bar   # same as above

alias Foo.{Bar, Baz}


require Redux # compiles a module
import Redux # プレフィックスなしで利用可能

use Redux # compiles, and runs Redux.__using__/1
use Redux, async: true

import Redux, only: [duplicate: 2]
import Redux, only: :functions
import Redux, only: :macros

#import Foo.{Bar, Baz}



IO.puts is_atom(1)
IO.puts is_bitstring(1)
IO.puts is_boolean(1)
IO.puts is_function(1)
IO.puts is_function(2)
IO.puts is_integer(1)
IO.puts is_float(1)
IO.puts is_binary(1)
IO.puts is_list(1)
IO.puts is_map(1)
IO.puts is_tuple(1)
IO.puts is_nil(1)
IO.puts is_number(1)
IO.puts is_pid(1)
IO.puts is_port(1)
IO.puts is_reference(1)



left = "a"
right = "a"


IO.puts left != right   # equal
IO.puts left !== right  # match
# IO.puts left ++ right   # concat lists
IO.puts left <> right   # concat string/binary
IO.puts left =~ right   # regexp





IO.puts nil
IO.puts true
IO.puts false
IO.puts ?a
IO.puts 23
IO.puts 3.14
IO.puts 'charkust'
IO.puts <<2,3>>
IO.puts "binstr"
IO.puts :atom
IO.puts [1,2] # 謎挙動
# IO.puts {'3', '4'}
# IO.puts %{a: "helll"}
# IO.puts %struct{b: "helll"}
# IO.puts fn -> end




res = cond do
  1 + 1 == 3 ->
    "I will never be seen"
  2 * 5 == 12 ->
    "Me neither"
  true ->
    "But I will (this is essentially an else)"
end

IO.puts res




res = case {1, 2, 3} do
  {4, 5, 6} ->
    "This clause won't match"
  {1, x, 3} ->
    "This will match and bind x to 2"
  _ ->
   "This will match any value"
end

IO.puts res


# if式
if false do
  IO.puts "This will never be seen"
else
  IO.puts "This will"
end

res = if false do
  "This will never be seen"
else
  "This will"
end

IO.puts res


IO.puts(if true do
  "This will never be seen"
else
  "This will"
end)



# 関数のパターンマッチ
defmodule Greeter do
  def greet(%{name: username}) do
    IO.puts "Hello, " <> username
  end
end

user = %{name: "Tom", age: 23}
Greeter.greet(user)




# map
user = %{
  name: "John",
  city: "Melbourne"
}
IO.puts "Hello, " <> user.name


# list
users = [ "Tom", "Dick", "Harry" ]
 
Enum.map(users, fn user ->
  IO.puts "Hell " <> user
end)




defmodule Greeter do
  def greet(name) do
    message = "Hell, " <> name <> "..."
    IO.puts message
  end
end

Greeter.greet("world")



[1, a] = [1, 2]
IO.puts a
IO.puts (for n <- [1,2,3,4,5], rem(n,2) == 1, do: n*n)




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


