#module Shout
	#We'll put some methods here soon, but this code is fine for now!
	#def self.yell_angrily(words)
	#	words + "!!!" + " :("
	#end

	#def self.yell_happily(words)
	#	words + "!!!" + " :)"
	#end
#end

#Driver Code
#p Shout.yell_happily("hello")
#p Shout.yell_angrily("hello")

module Flight
	def taking_off(altitude)
		puts "Taking of and ascending until reaching #{altitude}..."
	end
end

class Bird
	include Flight	
end

class Plane
	include Flight
end

#Driver Code

bird = Bird.new
bird.taking_off(500)
plane = Plane.new
bird.taking_off(1000)


module Shout

	def yell(words)
		puts "The Lion #{words} to scare the predators"
	end

	def yell_happy(words)
		puts "The penguin #{words} when it sees its family"
	end
end

class Lion
	include Shout
end

class Penguin
	include Shout
end

Marty = Lion.new
Marty.yell("roars")

Skipper = Penguin.new
Skipper.yell_happy("squeaks")