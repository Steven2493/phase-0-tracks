#Method 1 that takes in first user input to create word to be guess and second user input letters to guess word

#Method 2 that records how many guess second user has entered. Guess However are limited depending on length of word

#Method 3 that checks if a guess repeated so that it doesn't count against user

#Method 4 that takes an array of dashes and changes them depending if user guess the correct letter ("_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".)

#Method 5 that checks if user guess the correct answer or they reach max guess and ends game

#A loop that continues method 1 so user can continue to input letters


class Word_game
	attr_reader :guess_count, :word_tobe_guess, :user_guess, :game_over

	def initialize(word)
		@word_tobe_guess = word
		@guess_count = 0
		@game_over = false
	end

	




end

