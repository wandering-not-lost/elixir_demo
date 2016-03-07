defmodule Link2 do
  import :timer, only: [sleep: 1]

  def sad_func do
    sleep 500
    exit(:boom)
  end
  def run do
    Process.flag(:trap_exit, true)
    spawn_link(Link2, :sad_func, [])
    receive do
      msg -> IO.puts "Message Rxd: #{inspect msg}"
    after 1000 -> IO.puts "Nothing has happened"
    end
  end
end
