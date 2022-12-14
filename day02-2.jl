include("executor.jl")

function day02_2(lines)
    points = 0
    arr = []

    for line in lines
        arr = split(line, " ")

        if arr[2] == "X"
            temp = Int(only(arr[1]))
            points += mod(temp, 3) + 1
        end

        if arr[2] == "Y"
            points += 3
            points += Int(only(arr[1])) - 64
        end

        if arr[2] == "Z"
            points += 6
            temp = Int(only(arr[1])) + 2
            points += mod(temp, 3) + 1
        end      
    end

    return points
end

execute(2, day02_2)