require_relative 'game'

describe Word_game do 
	let(:new_game)	{Word_game.new("Hello")}


	it "takes player input" do
		expect(new_game.word).to eq "Hello"
	end

	it "Checks if words is in array" do
		new_game.used_letter = ["h"]
		expect(new_game.history_checker).to eq false
	end

	it "Tells if the user fails the game" do
		
		expect(new_game.game_over = false && num == 0).to eq ('Game over you lose the answer was #{word_to_guess}')
	end
end