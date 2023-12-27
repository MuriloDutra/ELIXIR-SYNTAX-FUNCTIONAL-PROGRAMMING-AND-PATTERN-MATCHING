defmodule MyModule do
    import IO, only: [puts: 1]
    import Kernel, except: [inspect: 1]

    alias MyModule.Math, as: MyMath

    def hello_world do
        inspect(MyMath.sum(2, 3))
    end

    #Private function
    defp inspect(parameter) do
        puts("Starting a new inspection\n")
        puts("#{parameter}\n")
        puts("Inspection finished")
    end

    def is_number_even(number) do
        require Integer
        puts("The number #{number} is even? #{Integer.is_even(number)}")
    end
end