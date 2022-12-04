include("executor.jl")

function day03(lines)
    priorities = 0

    for line in lines
        secondCompartment = SubString(line, div(lastindex(line), 2) + 1)
        firstCompartment = SubString(line, 1, div(lastindex(line), 2))
        sharedItem = intersect!(collect(firstCompartment), collect(secondCompartment))[1]
        shift = islowercase(sharedItem) ? 96 : 38
        priorities += Int(sharedItem) - shift
    end

    return priorities
end

execute(3, day03)