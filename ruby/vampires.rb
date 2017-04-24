STDOUT.sync = true
require 'date'
puts "How many employees will be processed?"
process = gets.chomp.to_i
count = 0

while count < process
puts "Hello whats is your name?"
name = gets.chomp
if name == "Drake Cula" || name == "Tu Fang"
	name = false
end

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
yearOfBirth = gets.chomp.to_i
if DateTime.now.year - yearOfBirth == age
	 age = true
else
	 age = false
end
puts "Should we order you some garlic bread?(Y/N)"

breadAnswer = gets.chomp.downcase

puts "Would you like to enroll in the company's health insurance?(Y/N)"

healthAnswer = gets.chomp.downcase


if age == true && (breadAnswer == "y" || healthAnswer == "y") && name
	puts "Probably not a vampire"
elsif age == false && (breadAnswer == "n" || healthAnswer == "n")
	puts "Probably a vampire"
elsif age == false && breadAnswer == "n" && healthAnswer == "n"
	puts "Almost certainly a vampire"
elsif age == true && (breadAnswer == "y" || healthAnswer == "y") && !name
	puts "Definitely a vampire"
else
	puts "Results inconclusive" 
end

count += 1
end