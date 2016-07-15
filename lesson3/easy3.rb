flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << "Dino"

puts flintstones

flintstones.push("Hoppy")

puts flintstones

advice = "Few things in life are as important as house training your pet dinosaur"

advice.slice!(0, advice.index('house'))

statement = "The flintstones rock"

puts statement.count "\\t"