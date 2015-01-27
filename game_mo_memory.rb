
#The computer's sequence of lights. 
#Does not clear through execution
mo = []		

#The player's sequence of lights.  Clears on every loop					
your_entry = []

#Counter that increases with every loop.
#used to display level and add new index to mo array.		
level = 0 			 
					

# the colors array holds the names of the colors.
colors = ["Green","Yellow", "Red", "Blue"]

#  Will run until player makes a mistake
while mo == your_entry 

# This clears the screen!
	print "\033c"   
	
# Greeting at the start of the game, and after each level is cleared.
puts level > 0 ? "Awesome! Let's try again!" : "First round, go!"

# This makes Ruby wait 1 seconds!
# Pause for suspense and ease of use.
	sleep 1 		
					
# This clears the screen!
	print "\033c"  	

#  The following line is how the mo array is built.  
#  A random number is added to the index 
#  corresponding to "level" in the mo array.

# Random number from 0 to 3 added to array mo
	mo[level] = rand(3)

# Interaction with user. Shows level and prompts for entry.
	puts "Level #{level}.  Mo's entry:"  
						
# Displays computer's sequence.						
	p mo
	mo.each do |index| 
		puts colors[index]
		`say #{colors[index]}`
	end

	# puts mo 				

#The following loop keeps the computer's array on screen for 3 seconds 
# and provides a counter	
		`say Your Turn in `
	(0..2).each {|countdown| 
		`say #{(3-countdown)}`

# This makes Ruby wait 0.25 seconds!
		sleep 0.25

	}
	puts `say "Go!"`

# The screen gets cleared and user is prompted for entry.  
	
	print "\033c"
	# This clears the screen!
	puts "Now it's your turn. Go:"

# One digit at a time, pressing enter after each.

	(0..level).each { |entry|
		your_entry[entry] = gets.to_i
	}

# Displays user entry in array format.  
# This will need to go when game implements lights
	puts "Your entry was: "
	p your_entry

# counter for level is incremented by 1
	level += 1
# This is the end of the while loop.  Loop keeps going until user makes a mistake
end

# When the user makes a mistake:
print "\033c"
puts "Boo.."
sleep 1

print "\033c"
# This clears the screen!

puts "So sorry...\n\n"
puts `say So sorry..`

# Pause for suspense...

sleep 0.5

puts "Mo's entry was:"
p mo 
puts "Yours was:"
p your_entry
print "\n\n\n\n"
puts "Thanks for playing.\n\n\n\n\n\n"
puts `say Thanks for playing`

