defmodule Monitor1 do
  import :timer, only: [sleep: 1]

  def sad_module do
    sleep 500
    exit(:boom)
  end

  def run do
    res = spawn_monitor(Monitor1, :sad_module, [])
    IO.puts IO.inspect res

    receive do
      msg -> IO.puts "Message rxd: #{IO.inspect msg}"
    after 1000 -> IO.puts "Nothing to see here"
    end
  end
end
