puts <<WELCOME
Please complete the lyrics below by entering
the missing word/phrase.  If you make a mistake, 
the test will end.  

Good luck.  Try not to screw up.

				>> Beta version(01.14.2015)




WELCOME

puts "Question 1:"
# The followig line contains the question that requires an
# answer from the user.
puts "O say can you see, by the dawn’s early _____\n\n"

# Following are the choices

puts "a) lite"
puts "b) light"
puts "c) fight"
print "Your answer (a, b, or c): "
answer = gets.chomp

case answer
# All cases test for lower case and upper case.

when "a" 
	puts "\n\n\nSorry Bud(lite)\n\n\n"

when "A" 
	puts "\n\n\nSorry Bud(lite)\n\n\n"

when "b"
	puts "\n\n\nGood job!\n\n\n"
when "B"
	puts "\n\n\nGood job!\n\n\n"

when "c" 
	puts "\n\n\nHuhh?\n\n\n"
when "C"
	puts "\n\n\nHuhh?\n\n\n"

else
	puts "Your choices are a, b or c"
	puts "Game over"
end


