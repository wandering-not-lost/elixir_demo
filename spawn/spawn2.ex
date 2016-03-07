defmodule Spawn2 do
  def greet do
    receive do
      {sender,contents} -> send sender, {:ok, "Hello, #{contents}"}
    end
  end
end

#client
pid = spawn(Spawn2, :greet, [])
send pid, {self, "World!"}
receive do
  {:ok,contents} -> IO.puts contents
end

send pid, {self, "Kermit!"}
receive do
  {:ok,contents} -> IO.puts contents
after 500 -> IO.puts "Greeter has gone silent"
end
