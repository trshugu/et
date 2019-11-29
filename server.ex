defmodule Counter do
  use GenServer
  
  
  def start_link(state, opts) do
    IO.puts "--csl#{inspect state}, #{inspect opts}--"
    
    # __MODULE__で自分のモジュール名を参照できる(マクロ)
    GenServer.start_link(__MODULE__, state, opts)
    
  end
  
  
  # 初期化
  def init(state) do
    IO.puts "--init (#{inspect state})--"
    {:ok, state}
  end
  
  # 同期呼び出し
  def handle_call(:up, from, state) do
    IO.puts "--handle_call(:up,#{inspect from},#{inspect state}) called--"
    state = state + 1
    {:reply, "result :upppp #{inspect state}", state}
  end
  
  def handle_call(:down, from, state) do
    IO.puts "--handle_call(:down,#{inspect from},#{inspect state}) called--"
    state = state - 1
    {:reply, "result :dowwwn #{inspect state}", state}
  end
  
  
  # 非同期呼び出し
  def handle_cast(:up, state) do
    IO.puts "--handle_cast(:up,#{inspect state}) called--"
    state = state + 1
    IO.puts "--state-->#{state}"
    {:noreply, state}
  end
  
  def handle_cast(:down, state) do
    IO.puts "--handle_cast(:down,#{inspect state}) called--"
    state = state - 1
    IO.puts "--state-->#{state}"
    {:noreply, state}
  end
  
  
  
end
