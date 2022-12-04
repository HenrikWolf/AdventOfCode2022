include("executor.jl")

function day01(lines)
    highestAmount = 0
    amount = 0

    for line in lines
        if isempty(line)
            if amount > highestAmount
                highestAmount = amount
            end

            amount = 0
        else
            amount += parse(Int32, line)
        end
    end

    return highestAmount
end

execute(1, day01)