# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
puts "-" * 30
p zombie_apocalypse_supplies.each { |name|  print name, "*"}

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
puts "-" * 30
def sort(arr)
  new_arr = arr.map{|name| name.downcase}
  return [] if new_arr.length == 0 
  move_array = new_arr.shift
  less, more = new_arr.partition {|e| e < move_array }
  sort(less) + [move_array] + sort(more)
  
end

puts sort(zombie_apocalypse_supplies)

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
puts "-" * 30
def find_item(arr)
  puts "Please enter item to find if its available"
  new_arr = arr.map{|name| name.downcase}
  item = gets.chomp.downcase
  answer = nil
  new_arr.each do |zombie_item|
  if item == zombie_item
     answer = true 
  else 
    answer =false
  end
  
end
  p answer
end
find_item(zombie_apocalypse_supplies)

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
#p zombie_apocalypse_supplies.keep_if {|name| name.length <=  8 } 

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
puts "-" * 30
def combine_item(arr1,arr2)
  new_arr = arr1 + arr2
  p new_arr.uniq!
  
end

# Hash Drills
combine_item(other_survivor_supplies,zombie_apocalypse_supplies)


extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
puts "-" * 30
extinct_animals.each {|key,value| puts "#{key}*#{value}"}


# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.

puts "-" * 30
extinct_animals.each do |key,value|
if value < 2000
  puts "#{key} #{value}"
end
end