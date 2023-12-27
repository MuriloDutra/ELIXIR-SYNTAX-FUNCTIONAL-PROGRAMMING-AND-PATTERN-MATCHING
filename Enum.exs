 defmodule MyModule.Enum do
    def first([]), do: nil
    
    def first(list), do: hd(list)

    def pipe_example() do
      require Integer
      
      1..10 |>
      Enum.map(&(&1 * 5)) |>
      Enum.filter(&Integer.is_even(&1)) |>
      Enum.sum()
    end
 end