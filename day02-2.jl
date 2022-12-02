
open("datasheets/datasheet-2.txt") do file
    points = 0
    arr = []

    for line in readlines(file)
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

    println(points)
end