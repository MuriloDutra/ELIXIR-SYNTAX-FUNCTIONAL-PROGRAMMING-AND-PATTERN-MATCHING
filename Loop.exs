defmodule MyModule.Loop do
    #Private
    defp tabuada(_, 11), do: []

    #Private
    defp tabuada(produto01, produto02) do
        [produto01 * produto02] ++ tabuada(produto01, produto02 + 1)
    end
      
    def tabuada(multiplicador) when multiplicador > 0 do
        tabuada(multiplicador, 1)
    end
end