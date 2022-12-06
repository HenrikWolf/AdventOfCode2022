using DataStructures

include("executor.jl")

## part one and two ##
function day06(lines)
    buffer = Queue{Char}()
    bufferLength = 14
    cnt = 0

    for char in lines[1]
        if length(unique(buffer)) == bufferLength
            return cnt
        end

        if cnt < bufferLength
            enqueue!(buffer, char)
        else
            dequeue!(buffer)
            enqueue!(buffer, char)
        end

        cnt += 1
    end
end

execute(6, day06)