WINNING_CHOICES = {
  rock: %w(lizard scissors),
  paper: %w(rock spock),
  scissors: %w(paper lizard),
  spock: %w(scissors rock),
  lizard: %w(spock paper)
}
WINNING_SCORE = 5
MOVES_KEY = {
  rock: 'r',
  paper: 'p',
  scissors: 's',
  spock: 'k',
  lizard: 'l'
}

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  WINNING_CHOICES[first.to_sym].include?(second)
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

def generate_player_choice
  choice = ''
  loop do
    prompt("Choose one: #{MOVES_KEY.values.join(', ')}")
    choice = gets.chomp

    if MOVES_KEY.value?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  choice
end

score = {
  player: 0,
  computer: 0
}

prompt('Let\'s play rock, paper, scissors, spock, lizard. '\
       'The first person to 5 wins!')

legend = <<-LEGEND
Key:
     Rock: #{MOVES_KEY[:rock]}
     Paper: #{MOVES_KEY[:paper]}
     Scissors: #{MOVES_KEY[:scissors]}
     Spock: #{MOVES_KEY[:spock]}
     Lizard: #{MOVES_KEY[:lizard]}
LEGEND

prompt(legend)

loop do
  player_choice = generate_player_choice
  computer_choice = MOVES_KEY.values.sample

  player_key = MOVES_KEY.key(player_choice).to_s
  computer_key = MOVES_KEY.key(computer_choice).to_s

  prompt("You chose: #{player_key} : Computer chose: #{computer_key}")

  display_results(player_key, computer_key)
  update_score(score, player_key, computer_key)

  prompt("Your score: #{score[:player]} : Computer score: #{score[:computer]}")

  if score[:player] == WINNING_SCORE
    prompt("You win!")
    break
  elsif score[:computer] == WINNING_SCORE
    prompt("The computer wins!")
    break
  end
end

prompt("Thank you for playing. Good bye!")
