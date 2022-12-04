
# @time logs the execution time
function execute(day, calculation)
    open("datasheets/datasheet-$day.txt") do file
        result = @time calculation(readlines(file))
        println("Result: $result")
    end
end