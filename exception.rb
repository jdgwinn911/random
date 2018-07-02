print "type file here: "
fn = gets.chomp # asks for file name 
begin
    f = open(fn) # opens file to read it 
    nlines = 0
    length = 0
    f.each { |line| nlines += 1; length += line.length } # gets the number of lines and the number of chars in a file
rescue
    print "File read failed: " + $! + "\n" #  $! only throws an exception if the file can't be read, also puts that you cannot read file on a new line 
else
    print fn, ": ", nlines, " lines, ", length, " characters.\n"
end