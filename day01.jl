
open("datasheets/datasheet-1.txt") do file
    highestAmount = 0
    amount = 0

    for line in readlines(file)
        if isempty(line)
            if amount > highestAmount
                highestAmount = amount
            end

            amount = 0
        else
            amount += parse(Int32, line)
        end
    end

    println(highestAmount)
end