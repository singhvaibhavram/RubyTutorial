require 'pp'

require_relative 'user'

user = User.new 'ram@example.com', 'Ram'

pp user

user.save