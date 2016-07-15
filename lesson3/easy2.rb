ages = { "Herman" => 32, "Lilly" => 30, "Grandpa" => 80}

ages.key?("spot")

puts ages.values.inject(:+)

puts ages.delete_if {|key, value| value >= 75}

#munsters_description = "The Munsters are creepy in a good way"

#puts munsters_description.capitalize

#puts munsters_description.swapcase

#puts munsters_description.downcase

#puts munsters_description.upcase

additional_ages = { "Marilyn" => 22, "Spot" => 237}

puts ages.merge(additional_ages).values.min