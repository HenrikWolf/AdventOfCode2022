
open("datasheets/datasheet-3.txt") do file
    priorities = 0
    lineCnt = 0
    arr = []

    for line in readlines(file)
        lineCnt += 1
        push!(arr, collect(line))

        if lineCnt == 3
            sharedItem = intersect!(arr[1], arr[2], arr[3])[1]
            shift = islowercase(sharedItem) ? 96 : 38
            priorities += Int(sharedItem) - shift
            lineCnt = 0
            arr = []
        end
    end

    println(priorities)
end