#Method 1 that takes in first user input to create word to be guess and second user input letters to guess word

#Method 2 that records how many guess second user has entered. Guess However are limited depending on length of word

#Method 3 that checks if a guess repeated so that it doesn't count against user

#Method 4 that takes an array of dashes and changes them depending if user guess the correct letter ("_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".)

#Method 5 that checks if user guess the correct answer or they reach max guess and ends game

#A loop that continues method 1 so user can continue to input letters
STDOUT.sync = true

class Word_game
attr_accessor :guess_count, :word_tobe_guess, :game_over, :used_letter, :dashes, :user_guess


def initialize(word)
@word_tobe_guess = word #Saves Players 1 word
@user_guess = user_guess #Saves Player 2 word
@guess_count = 0 #Keeps track of how many guess
@game_over = false #Allows loop to keep looping till true then ends game
@dashes = []
@used_letter = []#Stores letters guess so far
end

  def checks_input
    word_index = dashes
    word_array = @word_tobe_guess.split('')
    user_array = @user_guess.split('')

    user_array.each do |letter| # Compares players 2 letter to player 1s word
     if word_array.include?(letter)
      match_index = word_array.index(letter)
      word_index[match_index] = letter
     end
    end 
    dashes = word_index.join('')#Onces each loop ends adds player 2 letter to the index of dash array 
    #if/else statement to change @gameover if user either guess the correct answer or continues loop if wrong
     if word_tobe_guess != user_guess
     	p "Guessed so far: " + dashes
      	@game_over
    else 
      	@game_over = true
    end

  end
    
  #Adds already guess letter to array to check if player doesn't add it twice in a row
  def history_checker(guess)
    if @used_letter.include?(guess)
      puts "You already used that letter"
    else
    	#increments @guess_count if letter was unique 
      @guess_count += 1 
      @used_letter << guess
    end
  end
  
end


#Driver Code
puts "Hello users welcome to guess that word!!! Lets begin by player 1 entering the word to be guess"
word_to_guess = gets.chomp.downcase
new_game = Word_game.new(word_to_guess) #Word to be guess
new_game.dashes = ("-" * new_game.word_tobe_guess.length).split('') #Gets length of word and makes it to (-)

#Loop to begin game
while new_game.game_over != true
  num_guess = new_game.word_tobe_guess.length - new_game.guess_count #Need to find out how many guess player will heave
  
  if !new_game.game_over && num_guess != 0 
    puts "You have #{num_guess} to guess the correct word:"
    new_game.user_guess = gets.chomp.downcase
    new_game.checks_input
    new_game.history_checker(new_game.user_guess)
  elsif new_game.game_over != true && num_guess == 0
     puts "Game over you lose the answer was #{word_to_guess}"
    new_game.game_over = true
  end
end
#This runs once loops is over and user guess correctly
if new_game.game_over == true && num_guess != 0
 puts "Congraulations the word was #{word_to_guess}!!!!!"
end