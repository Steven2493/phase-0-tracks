require 'date'

puts "Hello whats is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
yearOfBirth = gets.chomp.to_i
if DateTime.now.year - yearOfBirth == age
	return true
else
	return false
puts "Should we order you some garlic bread?(Y/N)"

breadAnswer = gets.chomp.downcase

puts "Would you like to enroll in the company's health insurance?(Y/N)"

healthAnswer = gets.chomp.downcase

