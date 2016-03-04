people = [
  %{name: "Grumpy", height: 1.24 },
  %{name: "dave", height: 1.88},
  %{name: "dopey", height: 1.32},
  %{name: "sleepy", height: 2.14},
  %{name: "sneezy", height: 1.28}
]

for person = %{height: height} <- people do
  height > 1.5, do: IO.inspect person
end
