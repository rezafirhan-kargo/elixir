name = IO.gets("name:")
name = String.replace(name, "\n", "")
text = "hello" <> name
IO.puts("Hello, #{text}")