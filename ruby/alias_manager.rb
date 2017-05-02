#Rotates the string so that when a letter is passed it is moved on to the next string
def constants(letter)
  constants = "bcdfghjklmnpqrstvxzwy"
  constants2 = constants.chars.rotate.join('')
  constants_index = constants.index(letter.downcase)
  next_constants = constants2[constants_index]
end
#Same as Constants
def vowel(letter)
vowels = "aeiou"
vowels2 = vowels.chars.rotate.join('')
vowels_index = vowels.index(letter.downcase)
next_vowel = vowels2[vowels_index]
end

def scrabble_name(name)

new_name = ''
#Checks each letter of the argument to see if it is either a constants or vowel 
name.chars.each do |letter|
  if('bcdfghjklmnpqrstvxzwy'.include? letter)
  	#Calls method and adds it to string
    new_name += constants(letter)
 elsif('aeiou'.include? letter)
 	#same as constant
  new_name += vowel(letter)
else
	#Saves the space 
  new_name += letter
end

end
new_name.reverse.downcase
end

#creats a empty array so we can save both the original name and fake name
agent_list = []

 loop do
 	puts ("Agent Enter your name for a new one otherwise type quit to exit")
 	answer = gets.chomp
 	break if answer == "quit"
 	agent_list << "#{answer} is the real name of #{p scrabble_name(answer)}"
 end
 agent_list.join(" ")