defmodule Hello do
    name = IO.gets("name:")
    name = String.replace(name, "\n", "")
    IO.puts("Hello, #{name}")
end