#10.times {|number| puts (" " * number + "The Flintstones Rock!")}

# statement = "The Flintstones Rock"

# answer = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a

# letters.each do |letter|
#   letter_frequency = statement.scan(letter).count
#   answer[letter] = letter_frequency if letter_frequency > 0
# end

# puts answer

# puts "the value of 40 + 2 is #{40 + 2}"

# numbers = [1, 2, 3, 4]

# numbers.each do |number|
#   p number
  
# end

# p numbers

def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= -1
  end until dividend == 0
  divisors
end

factors(100)