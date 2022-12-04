include("executor.jl")

## part one ##
function day04(lines)
    matches = 0

    for line in lines
        limits = split(line, [',', '-'])
        limits = map(i -> parse(Int, i), limits)

        a_in_b = limits[1] <= limits[3] && limits[2] >= limits[4]
        b_in_a = limits[1] >= limits[3] && limits[2] <= limits[4]

        if (a_in_b || b_in_a)
            matches += 1
        end
    end

    return matches
end

## part two ##
function day04_2(lines)
    matches = 0

    for line in lines
        limits = split(line, [',', '-'])
        limits = map(i -> parse(Int8, i), limits)

        a_above_b = limits[2] < limits[3]
        b_above_a = limits[1] > limits[4]

        if (a_above_b || b_above_a)
            matches += 1
        end
    end

    return length(lines) - matches
end

execute(4, day04_2)