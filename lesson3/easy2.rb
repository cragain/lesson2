ages = { "Herman" => 32, "Lilly" => 30, "Grandpa" => 80}

ages.key?("spot")

puts ages.values.inject(:+)

puts ages.delete_if {|key, value| value >= 75}
