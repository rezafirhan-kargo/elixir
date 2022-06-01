list = IO.gets("list: ")
list = list |> String.replace("\n", "") |> String.split(" ", trim: true)
IO.inspect list
result = Enum.reduce(list, %{
    # all_list: [],
    number: [],
    odd_number: [],
    even_number: [],
    text: []
}, fn value, acc -> 
            case Integer.parse(value) do
            {int_value, ""} when rem(int_value, 2) == 1 -> 
            Map.merge(acc, %{
                number: acc.number ++ [value], 
                odd_number: acc.odd_number ++ [value]
            })
            {int_value, ""} when rem(int_value, 2) == 0 -> 
            Map.merge(acc, %{
                number: acc.number ++ [value], 
                even_number: acc.even_number ++ [value]
            })
            # Map.merge(map(), map())
           _ ->
            Map.put(acc, :text, acc.text ++ [value])
            # Map.put(map(), string atau atom (key), value)
            end
        end
)
IO.inspect result

indexOf = IO.gets("name:")
indexOf = String.replace(indexOf, "\n", "")
IO.inspect Enum.find_index(list, fn x -> x == indexOf end)


