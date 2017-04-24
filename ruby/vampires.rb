STDOUT.sync = true
require 'date'
puts "How many employees will be processed?"
process = gets.chomp.to_i
count = 0

#Loops until it reaches inputed applicants number
while count < process
puts "Hello whats is your name?"
name = gets.chomp
if name == "Drake Cula" || name == "Tu Fang"
	nameCheck = false
else
	nameCheck = true
end

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
yearOfBirth = gets.chomp.to_i
if DateTime.now.year - yearOfBirth == age
	 ageCheck = true
else
	 ageCheck = false
end
puts "Should we order you some garlic bread?(Y/N)"

breadAnswer = gets.chomp.downcase

puts "Would you like to enroll in the company's health insurance?(Y/N)"

healthAnswer = gets.chomp.downcase

#Loops to find sunshine string
allergy = nil
until allergy == "sunshine" || allergy == "done"
	puts "Do you have any allergys?"
	allergy = gets.chomp.downcase
	if allergy == "sunshine"
		puts "probably a vampire"
	end
end

#Checks Answer to see if they are a vampire
if ageCheck == true && (breadAnswer == "y" || healthAnswer == "y") && nameCheck
	puts "Probably not a vampire"
elsif ageCheck == false && (breadAnswer == "n" || healthAnswer == "n")
	puts "Probably a vampire"
elsif ageCheck == false && breadAnswer == "n" && healthAnswer == "n"
	puts "Almost certainly a vampire"
elsif ageCheck == true && (breadAnswer == "y" || healthAnswer == "y") && !nameCheck
	puts "Definitely a vampire"
else
	puts "Results inconclusive" 
end

count += 1
end


puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."