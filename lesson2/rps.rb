def prompt(message)
  puts "=> #{message}"
end

def win(player_choice, computer_choice)
  if player_choice == 'r' && computer_choice == 'p' 
    puts "Sorry, paper covers rock, you lose"
  elsif player_choice == 'r' && computer_choice == 'scissors'
    puts "Yeah, rock cracks scissors, you win!"
  elsif player_choice == 's' && computer_choice == 'paper'
    puts "Yeah, sissors cuts paper, you win!"
  elsif player_choice == 's' && computer_choice == 'rock' 
    puts "Oh no, rock cracks scissors, you lose!"
  elsif player_choice == 'p' && computer_choice == 'rock' 
    puts "Yeah, paper covers rock, you win!"
  elsif player_choice == 'p' && computer_choice == 'scissors' 
    puts "Oh no, scissors cut paper, you lose!"
  else puts "Its a tie!  It happens!!!"
  end
end

computer_choice = ['rock', 'paper', 'scissors'].sample

loop do
  prompt("Welcome to Rock Paper Scissors!  Press return to play...")
  gets
  
  prompt "Choose rock(r), paper(p), or sissors(s)"
  player_choice = gets.chomp.to_s
  
  prompt "You chose " + player_choice
  prompt "The computer chose " + computer_choice
  
  win(player_choice, computer_choice)
  
  puts "Would you like to play again? (y/n)"
  again = gets.chomp.to_s
  
  break unless again.downcase.start_with?('y')
end

puts "Thanks for playing, goodbye..."