class Santa 
	def initialize
		puts "initializing Santa instance..."
	end
	def speak
		puts "Ho, ho, ho! Haaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
	end


end

Jolly_Nick = Santa.new
Jolly_Nick.speak
Jolly_Nick.eat_milk_and_cookies("Oreos")