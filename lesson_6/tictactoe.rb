require 'byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [
  [1, 2, 3],
  [4, 5, 6],
  [1, 4, 7],
  [2, 5, 8],
  [1, 5, 9],
  [3, 5, 7]
]
WINNING_SCORE = 5

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(array, separator=', ', connector='or')
  case array.size
  when 0 then ''
  when 1 then array.first
  when 2 then array.join(" #{connector} ")
  else
    left_string = array[0..-2].join(separator)
    right_string = "#{separator}#{connector} #{array[-1]}"
    left_string + right_string
  end
end

# rubocop:disable Metrics/AbcSize
def display_board(board, scores)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is an #{COMPUTER_MARKER}"
  display_score(scores)
  puts ""
  puts "     |     |"
  puts "  #{board[1]}  |  #{board[2]}  |  #{board[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[4]}  |  #{board[5]}  |  #{board[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[7]}  |  #{board[8]}  |  #{board[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(board)
  board.keys.select { |num| board[num] == INITIAL_MARKER }
end

def player_places_piece!(board)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(board))})"
    square = gets.chomp.to_i
    break if empty_squares(board).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  board[square] = PLAYER_MARKER
end

def computer_places_piece!(board)
  WINNING_LINES.each do |line|
    if board.values_at(*line).count(PLAYER_MARKER) == 2
      line.each do |square|
        board[square] = COMPUTER_MARKER if board[square] == ' '
        return
      end
    end
  end
  square = empty_squares(board).sample
  board[square] = COMPUTER_MARKER
end

def board_full?(board)
  empty_squares(board).empty?
end

def someone_won?(board)
  !!detect_winner(board)
end

def detect_winner(board)
  WINNING_LINES.each do |line|
    # if board[line[0]] == PLAYER_MARKER &&
    #   board[line[1]] == PLAYER_MARKER &&
    #   board[line[2]] == PLAYER_MARKER
    #  return "Player"
    # elsif board[line[0]] == PLAYER_MARKER &&
    #      board[line[1]] == PLAYER_MARKER &&
    #      board[line[2]] == PLAYER_MARKER
    #  return "Computer"
    # end
    if board.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif board.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def initialize_scores
  {
    "Player" => 0,
    "Computer" => 0
  }
end

def display_score(scores)
  puts "Your Score: #{scores["Player"]}, Computer Score: #{scores["Computer"]}"
end

scores = initialize_scores

loop do
  board = initialize_board

  loop do
    display_board(board, scores)
    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  if someone_won?(board)
    winner = detect_winner(board)
    scores[winner] += 1
    display_board(board, scores)
    prompt "#{winner} won!"
  else
    prompt "It's a tie!"
  end

  if scores[winner] == WINNING_SCORE
    prompt "#{winner} has scored #{WINNING_SCORE}! Game Over!"
    break
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing tic tac toe! Good bye!"
