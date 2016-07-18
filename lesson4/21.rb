require 'pry'

cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
suits = ['H', 'D', 'C', 'S']

deck = suits.product(cards).shuffle

def card_value(hand)
   amount = 0
   values = hand.map { |card| card[1] }
   values.each do |value|
     if value == 'A'
       amount += 11
     elsif value.to_i == 0
       amount += 10
     else
       amount += value.to_i
     end
   end
   
   values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end
  
  amount
end
   

# Game Starts

puts "Welcome to BlackJack!  Press enter to deal the cards"
gets

player_hand = deck.shift(2)
computer_hand = deck.shift(2)

puts "Player is showing #{card_value(player_hand)}"
p player_hand
p "Computer is showing"
p computer_hand[0]

# Player turn

if player_hand == 21
  puts "You got BlackJack!"
else
  puts "Would you like to hit(h) or stay(s)?"
    hit_stay1 = gets.chomp
   
end


  if hit_stay1.downcase == 'h'
    player_hand << deck.shift(1)
  elsif hit_stay1.downcase == 's'
    puts "Player decides to stay"
  else puts "That is not a valid entry"
  end


p player_hand
p card_value(player_hand)





# Computer turn


