using DataStructures

include("executor.jl")

## part one ##
function day05(lines)
    stacks = initStacks()
    result = ""

    for i in 11:length(lines)
        arr = split(lines[i], " ")
        arr = map(x -> parse(Int32, x), deleteat!(arr, [1, 3, 5]))

        for k in 1:arr[1]
            push!(stacks[arr[3]], pop!(stacks[arr[2]]))
        end
    end

    for stack in stacks
        result *= pop!(stack)
    end

    return result
end

function initStacks()
    stacks = Array{Stack{Char}}(undef, 9)

    stacks[1] = push!(Stack{Char}(), 'B', 'L', 'D', 'T', 'W', 'C', 'F', 'M')
    stacks[2] = push!(Stack{Char}(), 'N', 'B', 'L')
    stacks[3] = push!(Stack{Char}(), 'J', 'C', 'H', 'T', 'L', 'V')
    stacks[4] = push!(Stack{Char}(), 'S', 'P', 'J', 'W')
    stacks[5] = push!(Stack{Char}(), 'Z', 'S', 'C', 'F', 'T', 'L', 'R')
    stacks[6] = push!(Stack{Char}(), 'W', 'D', 'G', 'B', 'H', 'N', 'Z')
    stacks[7] = push!(Stack{Char}(), 'F', 'M', 'S', 'P', 'V', 'G', 'C', 'N')
    stacks[8] = push!(Stack{Char}(), 'W', 'Q', 'R', 'J', 'F', 'V', 'C', 'Z')
    stacks[9] = push!(Stack{Char}(), 'R', 'P', 'M', 'L', 'H')

    return stacks
end

execute(5, day05)