require 'pry'

GAME_KEY = {
  rock: { key: 'r', beats: %w(lizard scissors) },
  paper: { key: 'p', beats: %w(rock spock) },
  scissors: { key: 's', beats: %w(paper lizard) },
  spock: { key: 'k', beats: %w(scissors rock) },
  lizard: { key: 'l', beats: %w(spock paper) }
}
WINNING_SCORE = 5

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  GAME_KEY[first.to_sym][:beats].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def update_score(score, player, computer)
  score[:player] += 1 if win?(player, computer)
  score[:computer] += 1 if win?(computer, player)
end

def generate_game_abbreviations
  moves = []

  GAME_KEY.values.each do |move|
    moves.push(move[:key])
  end

  moves.join(', ')
end

def receive_player_key
  choice = ''
  loop do
    game_abbreviations = generate_game_abbreviations
    prompt("Choose one: #{game_abbreviations}")
    choice = gets.chomp

    break if game_abbreviations.include?(choice)
    prompt("That's not a valid choice.")
  end

  choice
end

def convert_abbreviation_to_choice(abbreviation)
  player_choice = ''
  GAME_KEY.values.each do |move|
    if abbreviation == move[:key]
      player_choice = GAME_KEY.key(move).to_s
    end
  end

  player_choice
end

def generate_player_choice
  convert_abbreviation_to_choice(receive_player_key)
end

def generate_computer_choice
  GAME_KEY.keys.sample.to_s
end

def clear_screen
  system('clear') || system('cls')
end

def determine_winner(score)
  if score[:player] == WINNING_SCORE
    prompt("You win!")
  elsif score[:computer] == WINNING_SCORE
    prompt("The computer wins!")
  end
end

score = {
  player: 0,
  computer: 0
}

prompt('Let\'s play rock, paper, scissors, spock, lizard. '\
       'The first person to 5 wins!')

legend = <<-LEGEND
Key:
     Rock: #{GAME_KEY[:rock][:key]}
     Paper: #{GAME_KEY[:paper][:key]}
     Scissors: #{GAME_KEY[:scissors][:key]}
     Spock: #{GAME_KEY[:spock][:key]}
     Lizard: #{GAME_KEY[:lizard][:key]}
LEGEND

prompt(legend)

loop do
  player_choice = generate_player_choice
  computer_choice = generate_computer_choice

  clear_screen

  prompt("You chose: #{player_choice} : Computer chose: #{computer_choice}")

  display_results(player_choice, computer_choice)
  update_score(score, player_choice, computer_choice)

  prompt("Your score: #{score[:player]} : Computer score: #{score[:computer]}")

  determine_winner(score)

  if score[:player] == WINNING_SCORE || score[:computer] == WINNING_SCORE
    prompt("Would you like to play again? (y/N)")
    play_again = gets.chomp
    break unless play_again.downcase.start_with?('y')
    clear_screen
  end
end

prompt("Thank you for playing. Good bye!")
