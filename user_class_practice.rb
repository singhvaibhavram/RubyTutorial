# Creating Class
# User
class User
  
  #  Initialize method gets called everytime you create a new object
  def initialize(name)
    # Give name to the user object. @name is an instance variable and it life is as long as the class exists. Created within the class
    @name = name    
  end

  def hello
    puts "hello"
  end
    

end
# Call Class
user = User.new("Ram")
user1 = User.new("Rajul")
user2 = User.new("Sachin")

#puts user
#puts user1
#puts user2

puts user.hello
puts user1.hello
puts user2.hello