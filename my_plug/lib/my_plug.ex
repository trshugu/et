defmodule MyPlug do
  import Plug.Conn
  
  def init(options) do
    options
  end
  
  def call(conn, _opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "hell elixir")
  end
  
  @moduledoc """
  Documentation for MyPlug.
  """

  @doc """
  Hello world.

  ## Examples

      iex> MyPlug.hello()
      :world

  """
  def hello do
    :world
  end
end
