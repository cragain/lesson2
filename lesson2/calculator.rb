def prompt(message)
  puts("=> #{message}")
end

def right_num?(number)
  number.to_i != 0
end

def right_math?(operator)
  options = ['a', 'b', 'c', 'd'] 
  options.include? (operator)
end

x = ''
y = ''
z = ''

loop do
  prompt("Please provide the first number...")
  x = gets.chomp.to_f

  if right_num?(x)
    break
  else
    prompt("that is not a valid number, try again..")
  end

end

loop do
  prompt("Please provide the second number...")
  y = gets.chomp.to_f
  
  if right_num?(y)
    break
  else
    prompt("that is not a valid number, try again...")
  end
end


loop do
  prompt("What kind of math do you need? Type a) addition b) subtraction c) multiplication d) division")
  z = gets.chomp
  
  if right_math?(z)
    break
  else
    prompt("That is not one of the options, choose a, b, c, or d")
  end
end


answer = case z 
         when 'a'
           x + y 
         when 'b'
           x - y 
         when 'c'
           x * y 
         when 'd'
           x / y 
end

prompt(answer)
