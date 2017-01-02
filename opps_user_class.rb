# Creating Class
# User
class User

end

# Call Class
user = User.new

# changes everytime if nothing is done with it because it gets initialized everytime and ends. .new allows for the creation of new user everytime the class is called.
puts user

# Inheritance :- see where the user class inherits from. .ancestor method to list out all of the super classes of the user
puts User.ancestors  