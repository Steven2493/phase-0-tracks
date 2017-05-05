class Santa 
	#getters
	attr_reader :age, :ethnicity
	#setters
	attr_accessor :gender
	@age = 0
	def initialize(gender, ethnicity)
		puts "initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
	def speak
		puts "Ho, ho, ho! Haaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
	end

	def celebrate_birthday(age)
		age += 1
		@age = age
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete_if {|x| x == reindeer_name}
		@reindeer_ranking.push(reindeer_name)
		#p @reindeer_ranking
	end

end


#Driver Code tested before adding arguments to initialize
Jolly_Nick = Santa.new("Male","Hispanic")
Jolly_Nick.speak
Jolly_Nick.eat_milk_and_cookies("Oreos")
Jolly_Nick.get_mad_at("Vixen")
Jolly_Nick.celebrate_birthday(50)
Jolly_Nick.gender = "female"
Jolly_Nick.age
Jolly_Nick.ethnicity

#Driver code to test out initialize arguments
#santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
#santas << Santa.new("N/A", "N/A")

#Refactor version of above
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#example_genders.length.times do |i|
#  santas << Santa.new(example_genders[i], example_ethnicities[i])
#end
30.times do
	santas << Santa.new(example_ethnicities, example_genders)
end

#p santas