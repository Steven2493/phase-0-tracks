# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Get the Item type name, then list of items
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: Hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Add value and quantity by way category
# output: original hash plus additions

# Method to remove an item from the list
# input: list, item name, and optional quantity
# steps: delete method
# output: original hash plus additions, minus subtractions

# Method to update the quantity of an item
# input: list, item, new quantity number
# steps: shovel or push new value into existing space
# output: hash with updated Qs

# Method to print a list and make it look pretty
# input: hash
# steps: iterate each 
# output: hash minus the hash rockets
string = "carrots apples cereal pizza"


def groc_list(string)
  grocery_array = string.split
  grocery_list = {}
  grocery_array.map {|item| grocery_list[item] = 1}
  grocery_list
end

grocery_list = groc_list(string)


def add_item(item, quantity, list)
  list[item] = quantity
end

add_item("peas", 2, grocery_list)
# p grocery_list

def remove_item(item, list)
  list.delete(item)
end

remove_item("peas", grocery_list)
# p grocery_list

def update_quantity(item, quantity, list)
  list[item] = quantity
end

update_quantity("pizza", 5, grocery_list)


# p grocery_list

def print_list(list)
  list.each {|item, quantity| puts "I'm picking up #{quantity} #{item}."}
end

print_list(grocery_list)

#On your own, add a commented reflection section to your gps2_2.rb file. Answer the following questions in your reflection:

#What did you learn about pseudocode from working on this challenge?
# I Learned its every usefull to plan out ahead before starting to write your code because otherwise you can get lost or sidetracked
#What are the tradeoffs of using arrays and hashes for this challenge?
#Arrays are great for storing items but Hashes are better for organizing those items so you can easily read and used whats in it
#What does a method return?
#The last line of that specific method
#What kind of things can you pass into methods as arguments?
# Anythings really integers strings and booleans
#How can you pass information between methods?
#By creating a variable and storing the method inside of it
#What concepts were solidified in this challenge, and what concepts are still confusing?
#How methods interact with each other is something I'm Still confused on but was solidified is actually how to save methods inside a variable so i use other methods on it