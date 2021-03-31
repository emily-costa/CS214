# Emily Costa
# Feb 28, 2020
# CS 214 A
# Lab 4 - Display simple algoirthm:
# 1. Get start, stop, and increment.
# 2. For count = start to stop by increment:
# Display count and the logarithm of count
#################################################



def log_table(start,stop)
    while start <= stop
        puts " The logarithm of %.01f is %.05f \n" % [start,Math.log10(start)]
        start = start + 0.5
    end # end while loop
end # end function

if __FILE__ == $0

    # promt user and scan in input
    puts "\n To compute logarithms: "
    print " Enter start value: "
    start = gets.chomp.to_f
    print " Enter stop value: "
    stop = gets.chomp.to_f
    
    # call function to calculate and print logarithms
    log_table(start,stop)
    puts "\n"
end
