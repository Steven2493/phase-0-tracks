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