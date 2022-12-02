
open("datasheets/datasheet-1.txt") do file
    amount = 0
    amounts = []

    for line in readlines(file)
        if isempty(line)
            push!(amounts, amount)
            amount = 0
        else
            amount += parse(Int32, line)
        end
    end

    sort!(amounts, rev=true)
    println(amounts[1] + amounts[2] + amounts[3])
end