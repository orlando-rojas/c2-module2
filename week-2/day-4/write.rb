print "What is your name? "
name = gets.chomp
File.open("write_name.txt", "w") do |file|
    file.write "Your name is #{name}"
    print "Writting your name to a file!"
end