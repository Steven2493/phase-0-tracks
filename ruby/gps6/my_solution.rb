# Virus Predictor

# I worked on this challenge [by myself, with: Kala Wetzler ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require './state_data.rb' makes external file accessible 
# Require relative grabs 'state_data' file and makes its data usable 
require_relative 'state_data'

class VirusPredictor
  # new initializes automatically 
  # self = VirusPredictor.print_report
  def self.print_report(data)
    data.each do |state_name, population_data|
      state = new(state_name, population_data[:population_density], population_data[:population])
      #:population is pulling Alabama pop numbers (4822023) from hash
      state.virus_effects
    end
  end


# Initialize calls in the data from STATE_DATA
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  

# Virus_effects is a method calling other methods
  def virus_effects
    predicted_deaths 
    speed_of_spread
  end


private
# Predicted deaths method comes up with number of deaths per state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# speed of spread method predicts how long it will take to spread across the state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
VirusPredictor.print_report(STATE_DATA)



 # initialize VirusPredictor for each state
# STATE_DATA.each do |state_name, population_data|
#   state = VirusPredictor.new(state_name, population_data[:population_density], population_data[:population])
#   #:population is pulling Alabama pop numbers (4822023) from hash
#   state.virus_effects
# end




# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

#What are the differences between the two different hash syntaxes shown in the state_data file?
#In State_data Hash the key is the states name and the value is the whole hash itself. While The states key is the data name and the value is the number

#What does require_relative do? How is it different from require?
#It Allows you to use another file inside the folder it self to be used in this file. While require lets you pull from a higher level not just in the folder it self.

#What are some ways to iterate through a hash?
#Using a .each or a .map or a while loop

#When refactoring virus_effects, what stood out to you about the variables, if anything?
#It wasn't necessary to add the variable names itself since that wouldn't do anything.


#What concept did you most solidify in this challenge?
#Re using variable names in other methods and pulling data from another file