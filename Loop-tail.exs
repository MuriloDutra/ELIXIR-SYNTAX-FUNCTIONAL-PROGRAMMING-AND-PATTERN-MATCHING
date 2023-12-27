defmodule MyModule.Loop do
    #Private
    defp tabuada(_, 11, list), do: list

    #Private
    defp tabuada(produto01, produto02, list) do
        new_list = list ++ [produto01 * produto02] 
        tabuada(produto01, produto02 + 1, new_list) #tail recursion
    end
      
    def tabuada(multiplicador) when multiplicador > 0 do
        tabuada(multiplicador, 1, [])
    end
end