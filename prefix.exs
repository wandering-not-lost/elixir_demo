prefix = fn pre -> ( fn post -> "#{pre} #{post}"  end)  end

prefix.("Mr").("Bond")
|> IO.puts 
