# 1. Dictionary of 10 cities (hash) with 10 cities name, where the city name would be a string and the key, and the area code would be the value
  #get input from the user on the city name
  #display the city names to the user which are available in the dir
  #keep the program running and prompt the user for new city names
  #create a method to lookup area code, will take in a hash of the dictionary and the city name and will output the area
#

# Solution

book = {
  "New Delhi" => "001",
  "Varanasi" => "054",
  "Surat" => "395",
  "Meerut" => "002",
  "Chandigarh" => "003",
  "Hyderabad" => "004",
  "Lucknow" => "005",
  "Ranchi" => "006",
  "Bhopal" => "007",
  "Mumbai" => "008"
}

# Method to display city name from hash
def getCityName(hashBook)
  hashBook.each { |k, v| puts k}
end

# Method to get area code, book and th city name
def getAreaCode(hashBook, key)
  hashBook[key]
end



# Loop to keep the program running
loop do
  puts "Do you want to search a city name?(Y/N)"
  answer = gets.chomp

  # check the answer
  if answer != "Y"
    break
  end

  # Take cityname from user
  getCityName(book)
  puts "Enter the city name to search"
  cityname = gets.chomp

  # Check if city name exists in the key or not
  if book.include?(cityname)
    puts "The area code for #{cityname} is #{getAreaCode(book,cityname)}"
  else
    puts "City not in database or invalid city name"
  end

end
