defmodule Spawn4 do
  def greet do
    receive do
      {sender,contents} -> send sender, {:ok, "Hello, #{contents}"}
      greet
    end
  end
end

pid = spawn(Spawn4, :greet, [])
send pid, {self, "World!"}
receive do
  {:ok,contents} -> IO.puts contents
end
send pid, {self, "Kermit!"}
receive do
  {:ok,contents} -> IO.puts contents
after 500 -> "Greeter has gone silent"
end
