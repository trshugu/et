# defmoduleでモジュールを定義
defmodule SampleFunc do
  # defで関数を定義
  def hello(person) do
    # inspectで文字列以外の値を埋め込み
    IO.puts "Hell!, #{person}. My pid is #{inspect self()}."
    
    # receiveでメッセージを受け付ける
    receive do
      message -> IO.puts "Message is #{message}."
      
      # 処理が終了するときに自分自身を呼び出すと継続的に処理できる
      hello(person)
    end
  end
end
