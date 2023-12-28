defmodule MyModule.Stream do
    require Integer

    def with_stream do
        1..1_000_000 |>
        Stream.map(&(&1 * 5)) |>
        Stream.filter(&Integer.is_even(&1)) |>
        Enum.sum()
    end

    def without_stream do
        1..1_000_000 |>
        Enum.map(&(&1 * 5)) |>
        Enum.filter(&Integer.is_even(&1)) |>
        Enum.sum()
    end
end