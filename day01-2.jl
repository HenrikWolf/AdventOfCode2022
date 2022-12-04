include("executor.jl")

function day01_2(lines)
    amount = 0
    amounts = []

    for line in lines
        if isempty(line)
            push!(amounts, amount)
            amount = 0
        else
            amount += parse(Int32, line)
        end
    end

    sort!(amounts, rev=true)
    return amounts[1] + amounts[2] + amounts[3]
end

execute(1, day01_2)