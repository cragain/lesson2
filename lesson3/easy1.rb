advice = "urgent"

advice.gsub!('urgent', 'important')

puts advice

numbers =[1, 2, 3, 4, 5]

numbers.delete_at(1)

puts numbers

numbers.delete(1)

puts numbers  #because I mutated the original array, only 3,4,5 printed.

if ("10".."100").include?("42")
  puts "yep"
else
  puts "nope"
end

