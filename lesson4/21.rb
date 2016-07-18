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
   
   values.select { |value| value == 'A' }.count.times do
    amount -= 10 if amount > 21
end
  
amount
end

def busted_hand(hand)
  return unless card_value(hand) > 21
    puts 'Whoops, you busted.  Game Over'
end

def declare_winner(phand, chand)
  if phand > chand
    puts "Good Job Player, you win!"
  elsif chand > phand
    puts "Oh no, Computer got ya"
  else
    puts "Looks like it is a tie, no blood"
  end
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

loop do
  hit_stay = nil
  loop do
    puts "Would you like to hit(h) or stay(s)?"
    hit_stay = gets.chomp
    break if hit_stay.downcase == 'h' || hit_stay.downcase == 's'
    puts "That is not a valid choice"
  end


  if hit_stay == 'h'
    player_hand << deck.shift(1)
    puts "Player now has #{player_hand} and a total of #{card_value(player_hand)}"
    busted_hand(player_hand)
  end
  
break if hit_stay == 's' || card_value(player_hand) > 21
end

# Computer turn

  if card_value(computer_hand) < 17
    loop do
      computer_hand << deck.shift(1)
    break if card_value(computer_hand) > 16
    end
  end
  if card_value(computer_hand) > 21
    puts "Computer Busted, You Win!"
    puts "Computer drew #{computer_hand} with a total of #{card_value(computer_hand)}"
  end


# Determine Winner

if card_value(player_hand) < 22 && card_value(computer_hand) < 22
  puts "Lets see who won"
  puts "Player has #{player_hand} for a total of #{card_value(player_hand)}"
  puts "Computer has #{computer_hand} for a total of #{card_value(computer_hand)}"
  declare_winner(card_value(player_hand), card_value(computer_hand))
else puts "Thanks for Playing!"
end

