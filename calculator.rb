puts "Please provide the first number..."

x = gets.chomp.to_f

puts "Please provide the second number..."

y = gets.chomp.to_f

puts "What kind of math do you need? Type a) addition b) subtraction c) multiplication d) division"

z= gets.chomp

if z == 'a'
  answer = x + y
elsif z == 'b'
  answer = x - y 
elsif z == 'c'
  answer = x * y 
else z = 'd'
  answer = x / y 
  
end 

puts answer
