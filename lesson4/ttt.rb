require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def display_board(brd)
  puts ""
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |     "
  puts "-----------------"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |     "
  puts "-----------------"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |     "
  puts ""
end

def initialize_board
  board_spaces = {}
  (1..9).each { |num| board_spaces[num] = INITIAL_MARKER }
  board_spaces
end

board_spaces = initialize_board

display_board(board_spaces)

def empty_board_spaces(brd)
  brd.select { |_num, val| val == ' ' }.keys
end

def joinor(arr, delimiter=', ', word='or')
  arr[-1] = "#{word} #{arr.last}" if arr.size > 1
  arr.size == 2 ? arr.join(' ') : arr.join(delimiter)
end

def player_places_piece(brd)
  square = ''
  loop do
    puts "=> Choose a square (#{joinor(empty_board_spaces(brd))})"
    square = gets.chomp.to_i
    if empty_board_spaces(brd).include?(square)
      break
    else
      puts 'That is not an empty square'
    end
  end
  
  brd[square] = PLAYER_MARKER
end

def computer_places_piece(brd)
  comp_square = empty_board_spaces(brd).sample
  brd[comp_square] = COMPUTER_MARKER
end

def player_spaces(brd)
  brd.select {|key, value| value == "X"}.keys
end

def computer_spaces(brd)
  brd.select {|_key, value| value == "O"}.keys
end

def any_winner?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  winning_combos = [[1, 2, 3], [1, 5, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [4, 5, 6], [3, 5, 7], [7, 8, 9]]
  winning_combos.each do |combo|
    if brd[combo[0]] == PLAYER_MARKER && brd[combo[1]] == PLAYER_MARKER && brd[combo[2]] == PLAYER_MARKER
      return 'Player'
    elsif brd[combo[0]] == COMPUTER_MARKER && brd[combo[1]] == COMPUTER_MARKER && brd[combo[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  nil
end



begin  
  player_places_piece(board_spaces)
  computer_places_piece(board_spaces)
  display_board(board_spaces)
  
  
end until any_winner?(board_spaces) || empty_board_spaces(board_spaces).empty?

if any_winner?(board_spaces) 
  puts "Congrats #{detect_winner(board_spaces)} you won!"
else puts "Its a tie!"
end


def game_score_increase(brd)
  player_score = 0
  computer_score = 0 
  if detect_winner(brd) == 'Player'
    player_score += 1
  else detect_winner(brd) == 'Computer'
    computer_score += 1
  end
  puts "Player has #{player_score} points"
  puts "Computer has #{computer_score} points" 
end

begin  
  game_score_increase(board_spaces)
end until player_score == 5 || computer_score == 5