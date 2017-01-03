# Creating Class
# User
class User
  
  attr_accessor :name, :email
  #  Initialize method gets called everytime you create a new object
  def initialize(name, email)
    # Give name to the user object. @name is an instance variable and it life is as long as the class exists. Created within the class
    @name = name
    @email = email   
  end

  def run
    puts "Hi, I am running!"
  end
  
  #This is class method
  def self.identify_yourself
    puts "Hey I am a class method"
  end

end

class Buyer < User
  def run
    puts "Hey I am not running and I am in buyer class"
  end
end

class Seller < User

end

class Admin < User

end



# Call Class
user = User.new("Ram", "ram@example.com")
puts "My user's name is #{user.name} and his email is #{user.email}"

user.name = "John"
user.email = "john@example.com"
puts "My user's name is #{user.name} and his email is #{user.email}"

# to run this class method you don't need an instance of user you can directly call the
#User.identify_youself 

buyer1 = Buyer.new("John Doe", "johndoe@example.com")
buyer1.run
seller1 = Seller.new("John Doe1", "johndoe1@example.com")
seller1.run
admin1 = Admin.new("John Doe2", "johndoe2@example.com")
admin1.run

# See ancestors to see hierarchy 
puts Buyer.ancestors

# Till now it was instance method... now we will see class method
# Class Method :- Class method can be called directly called in the class without initiating any object
# to run this class method you don't need an instance of user you can directly call the
User.identify_yourself 