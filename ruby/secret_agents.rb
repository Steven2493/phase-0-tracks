# Advances a character one letter forward
# Spaces should remain spaces
# Assume lowercase input and output
# Loops through string by character and moves each character ahead one letter
# Returns the new string
STDOUT.sync = true

def encrypt(str)
  counter = 0
  while counter < str.length
    str[counter] = str[counter].next!
    counter += 1
  end
  return str
end

puts encrypt("hello")

# Decrements the character one letter back
# Same caveats for encrypt

def decrypt(str)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  counter = 0
  while counter < str.length
    index = alphabet.index(str[counter])
    puts "not a letter" if index.nil?
    str[counter] = alphabet[index - 1]
    counter += 1
  end
  return str
end

puts decrypt("bcd")

puts decrypt(encrypt("swordfish"))

response = nil
until response == "decrypt" || response == "encrypt"
puts "Would you like to decrypt or encrypt?"
response = gets.chomp.downcase
end

puts "Please enter password?"

password = gets.chomp.downcase


if response == "decrypt"
  puts decrypt(password)
elsif response == "encrypt"
  puts encrypt(password)
end