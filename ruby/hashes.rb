# def method that takes input from user: the client's name, age, number of children, decor theme,

def application 
  # create a empty hash for future input from user 
  applicationFile = {}
  
  puts "What is your name?"
  userName = gets.chomp
  puts "What is your age?"
  age = gets.chomp.to_i
  puts "How many childern do you have?"
  childern = gets.chomp.to_i
  puts "What decor theme would you like?"
  decorTheme = gets.chomp
  #Adds user input into the hash
  applicationFile = {:name => userName, :age => age, :numberofChildren => childern, :decorTheme => decorTheme}
  
end

#saves method into a new variable to be called upon
p new_applicaton = application

#Creates a if/else statment to see if user would like to update 
def choiceUpdate(app_update)
  puts "Would you like to update any of your choices if so select the choice and then write the new one or type done to exit"
  updateChoice = gets.chomp
  if updateChoice == "name"
    puts "Please enter new name:"
    update1 = gets.chomp
    app_update[:name] = update1
  elsif updateChoice == "age"
    puts "Please enter new age:"
    update2 = gets.chomp.to_i
    app_update[:age] = update2
  elsif updateChoice == "childern"
    puts "Pleas update number of Childern:"
    update3 = gets.chomp.to_i
    app_update[:numberofChildren] = update3
  elsif updateChoice == "decorTheme"
    puts "Please update new decor theme:"
    update4 = gets.chomp
    app_update[:decorTheme] = update4
  elsif updateChoice == "none"
end

end

choiceUpdate(new_applicaton)

#updated user info
p new_applicaton
