class Puppy

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	def initialize
		puts "Initializing new puppy instance...."
		@name = "ralph"
	end

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	def speak(num)
		num.times do puts "Woof!"
		end
	end

	def bark(num)
		puts "Bark!" * num
	end

	def rollover
		puts "***  Rollsover ***"
	end

	def dogyears(human_years)
		dog_age = human_years / 7
      puts dog_age #without puts it's implicitly returning
  end

  def sit
  	puts "Dog sits down and wags tail"
  end
end

#DRIVER CODE
puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(5)
puppy.bark(3)
1.times do puppy.rollover end
puppy.rollover
puppy.dogyears(20)
puppy.sit

#NEW CLASS
class Athlete
	def initialize
		@health = 100
		@bones = "steel"
		@stamina = 50
		puts "initializing Athlete with health of #{@health},\nbones of #{@bones}, \nand stamina at #{@stamina}"
	end

	def injure
		@health -= 20
		puts "athlete got injured and now has a health at #{@health}"
	end

	def take_steroids
		@stamina += 30
		puts "athlete took steroids and now has #{@stamina} stamina"
	end

	def get_operation
		@bones = "titanium"
		puts "Athlete is recovering but now has #{@bones} bones"
	end

	def play_olympics(sport)
		puts "Athlete won a Silver Metal at #{sport} and can now afford an operation!"
	end
	end

	 

stan = Athlete.new
p "**** health"
stan.injure
stan.take_steroids
stan.play_olympics("pole vault")
stan.get_operation

athletes = []

50.times do #it's annoying to read 50 so I tested with 10
	athlete = Athlete.new
	athletes << athlete
end
p athletes

athletes.each do |instance|
	instance.injure
	instance.take_steroids
end
