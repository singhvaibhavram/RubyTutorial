# Creating module
#now I have put a due to the naming convention. It's not an error in typing ;p 
#modules need to end with able
#so if a module is to be named 'eat' it has to be written as 'eatable'
module Destructable
  def destroy(anyObject)
    puts "Object is destroyed"
  end
  # to use this method of the module in the user class I will have to include it otherwise I won't have access to the destroy method
end

# Creating Class
# User
class User
  # include module
  include Destructable
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

# Dealing with modules
# Module :- Module is similar to class but is bassically a collection of behaviour which the class can use via mixing, so you have to include the module in the class that you want to use but you cannot have an object of a module.
# A module has to be mixed in a classand then the methods can be used in a module
userModule = User.new("Rajul", "rajul@example.com")
user.destroy("myname")
# visit ruby-lang.org site ti lookup some methods and classes and modules and read them.