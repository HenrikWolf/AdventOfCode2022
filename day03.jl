
open("datasheets/datasheet-3.txt") do file
    priorities = 0

    for line in readlines(file)
        secondCompartment = SubString(line, div(lastindex(line), 2) + 1)
        firstCompartment = SubString(line, 1, div(lastindex(line), 2))
        sharedItem = intersect!(collect(firstCompartment), collect(secondCompartment))[1]
        shift = islowercase(sharedItem) ? 96 : 38
        priorities += Int(sharedItem) - shift
    end

    println(priorities)
end