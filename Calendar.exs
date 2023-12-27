defmodule MyModule.Calendar do
    def abbreviation_day(week_day) do
        if week_day == :Segunda do
            "Seg"
        else
            if week_day == :Terca do
                "Ter"
            else
                if week_day == :Quarta do
                    "Qua"
                else
                    if week_day == :Quinta do
                        "Qui"
                    else
                        if week_day == :Sexta do
                            "Sex"
                        else
                            if week_day == :Sabado do
                                "Sab"
                            else
                                "Dom"
                            end
                        end
                    end
                end
            end
        end
    end

    def abbreviation_day_02(week_day) do
        case week_day do
            :Segunda -> "Seg"
            :Terca -> "Ter"
            :Quarta -> "Qua"
            :Quinta -> "Qui"
            :Sexta -> "Sex"
            :Sabado -> "Sab"
            :Domingo -> "Dom"
            _ -> "Invalid day"
        end
    end

    def abbreviation_day_03(week_day) do
        cond do
            week_day == :Segunda -> "Seg"
            week_day == :Terca -> "Ter"
            week_day == :Quarta -> "Qua"
            week_day == :Quinta -> "Qui"
            week_day == :Sexta -> "Sex"
            week_day == :Sabado -> "Sab"
            week_day == :Domingo -> "Dom"
            true -> "Invalid day"
        end
    end

    def abbreviation_day_04(:Segunda), do: "Seg"
    def abbreviation_day_04(:Terca), do: "Ter"
    def abbreviation_day_04(:Quarta), do: "Qua"
    def abbreviation_day_04(:Quinta), do: "Qui"
    def abbreviation_day_04(:Sexta), do: "Sex"
    def abbreviation_day_04(:Sabado), do: "Sab"
    def abbreviation_day_04(:Domingo), do: "Dom"
    def abbreviation_day_04(_), do: "Invalid day"
end