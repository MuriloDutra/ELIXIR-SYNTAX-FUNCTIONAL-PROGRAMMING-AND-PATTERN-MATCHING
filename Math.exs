defmodule MyModule.Math do
    def sum(first, second) do
        first + second
    end

    def subtract(first, second), do: first - second

    def is_zero?(0), do: true
    def is_zero?(number) when(is_integer(number)) , do: false
end