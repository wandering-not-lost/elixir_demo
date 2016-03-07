defmodule Spawn1 do
  def greet do
    receive do
      {sender,contents} -> send sender, {:ok, "Hello, #{contents}"}
    end
  end
end

#client
pid = spawn(Spawn1, :greet, [])
send pid, {self, "World!"}
receive do
  {:ok,contents} -> IO.puts contents 
end
