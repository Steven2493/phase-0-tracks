#Method 1 that takes in first user input to create word to be guess and second user input letters to guess word

#Method 2 that records how many guess second user has entered. Guess However are limited depending on length of word

#Method 3 that checks if a guess repeated so that it doesn't count against user

#Method 4 that takes an array of dashes and changes them depending if user guess the correct letter ("_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".)

#Method 5 that checks if user guess the correct answer or they reach max guess and ends game

#A loop that continues method 1 so user can continue to input letters


class Word_game
attr_accessor :guess_count, :word_tobe_guess, :game_over, :used_letter, :guess_checker, :dashes, :user_guess


def initialize(word)
@word_tobe_guess = word
@user_guess = player2_guess
@guess_count = 0
@game_over = false
@guess_checker = false
@dashes = []
@used_letter = []
end

  def checks_input

    word_index = dashes
    word_array = @word_tobe_guess.split('')
    user_array = @user_guess.split('')

    user_array.each do |letter| # Compares all letters
     if word_array.include?(letter)
      match_index = word_array.index(letter)
      word_index[match_index] = letter
     end
    end 
    p dashes = word_index.join('')
  end
  
  def history_checker(guess)
    if @used_letter.include?(guess)
      puts "You already used that letter"
    else
      @guess_count += 1 
      @used_letter << guess
    end
    
  end
  
end


#Driver Code
new_game = Word_game.new("hello") #Word to be guess
new_game.dashes = ("-" * new_game.word_tobe_guess.length).split('') #Gets length of word and makes it to (-)


while new_game.game_over != true
  num_guess = nil
  
  if new_game.game_over != true && num_guess != 0 
    num_guess = new_game.word_tobe_guess.length- new_game.guess_count
    puts "You have #{num_guess} to guess the correct word:"
    new_game.user_guess = gets.chomp.downcase
    new_game.checks_input
    new_game.history_checker(new_game.user_guess)
   end
  @game_over
end