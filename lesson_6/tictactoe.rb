require 'byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [1, 4, 7],
  [2, 5, 8],
  [3, 6, 9],
  [1, 5, 9],
  [3, 5, 7]
]
WINNING_SCORE = 5
FIRST_MOVE = 'choose'

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
  square = nil

  # offense first
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, board, COMPUTER_MARKER)
    break if square
  end

  # defense
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, board, PLAYER_MARKER)
      break if square
    end
  end

  # pick 5 if available
  if board[5] == INITIAL_MARKER
    square = 5
  end

  # just pick a square
  if !square
    square = empty_squares(board).sample
  end

  board[square] = COMPUTER_MARKER
end

def place_piece!(board, current_player)
  if current_player == "player"
    player_places_piece!(board)
  elsif current_player == "computer"
    computer_places_piece!(board)
  end
end

def alternate_player(current_player)
  current_player == "player" ? "computer" : "player"
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def board_full?(board)
  empty_squares(board).empty?
end

def someone_won?(board)
  !!detect_winner(board)
end

def detect_winner(board)
  WINNING_LINES.each do |line|
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
  current_player = FIRST_MOVE

  loop do
    case FIRST_MOVE
    when "choose"
      first_move = ""
      loop do
        prompt "Who should go first? (player or computer)"
        first_move = gets.chomp
        break if first_move == "player" || first_move == "computer"
      end

      current_player = first_move

      case first_move
      when "player"
        loop do
          display_board(board, scores)
          place_piece!(board, current_player)
          current_player = alternate_player(current_player)
          break if someone_won?(board) || board_full?(board)
        end
        break
      when "computer"
        loop do
          display_board(board, scores)
          place_piece!(board, current_player)
          current_player = alternate_player(current_player)
          break if someone_won?(board) || board_full?(board)
        end
        break
      end
    when "player"
      display_board(board, scores)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    when "computer"
      display_board(board, scores)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end
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
