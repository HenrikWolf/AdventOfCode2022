include("executor.jl")

function day02(lines)
    points = 0
    arr = []

    for line in lines
        arr = split(line, " ")
        if arr[2] == "X"
            points += 1
        end

        if arr[2] == "Y"
            points += 2
        end

        if arr[2] == "Z"
            points += 3
        end

        diff = Int(only(arr[2])) - Int(only(arr[1]))
        if diff == 23
            points += 3
        end

        if diff == 24 || diff == 21
            points += 6
        end       
    end

    return points
end

execute(2, day02)