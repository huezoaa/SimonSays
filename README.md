# SimonSays
1st Ruby REPL game.  Originally named it "mo_memory"

Simple ideas:
Imitation of the Simon Says game where you have to memorize the combination of sounds and colors that the machine picks at random
Every time you memorize the sequence correctly, an extra color is added to the sequence.  Game ends when user enters an 
improper sequence.

Code uses two arrays:
  one to hold the machine sequence: mo=[],
  one to hold the user's sequence: your_entry=[]
  
The rand() function is used to generate a random choice between 0,1,2,3 :  rand(3).

Voice command `say` was added for fun.  

