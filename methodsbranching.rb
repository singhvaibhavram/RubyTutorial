def multiply(a,b)
  a * b
end

def mod(a,b)
  a % b
end

puts "Enter Two Numbers"

a = gets.chomp
b = gets.chomp

a = a.to_f
b = b.to_f

puts "What do you want 1)Multiply 2)Modular"

choice = gets.chomp
choice = choice.to_i

if choice == 1
  puts "The multiplication is #{multiply(a,b)}"
elsif choice == 2 
  puts "The modular is #{mod(a,b)}"
else
  puts "Invalid Choice"
end


