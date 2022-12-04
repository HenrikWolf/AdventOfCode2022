
# @time logs the execution time
function execute(day, calculation)
    open("datasheets/datasheet-$day.txt") do file
        println(@time calculation(readlines(file)))
    end
end