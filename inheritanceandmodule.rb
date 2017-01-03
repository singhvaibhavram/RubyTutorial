# Creating Class
# User
class User
  attr_accessor :name, :email
  #  Initialize method gets called everytime you create a new object
  def initialize(name)
    # Give name to the user object. @name is an instance variable and it life is as long as the class exists. Created within the class
    @name = name
    @email = email   
  end

  def hello
    puts "hello"
  end
  
  def self.identify_yourself
    puts "Hey I am a class method"
  end

end
# Call Class

user = User.new("Ram", "Ram@example.com")

user.run
# to run this class method you don't need an instance of user you can directly call the
User.identify_youself 
