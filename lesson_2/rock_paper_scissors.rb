# TODO: Bonus 2: Typing the full word "rock" or "lizard" is tiring. Update the
# program so the user can type "r" for "rock", "p" for "paper", etc. Note that
# if you do bonus #1, you'll have two words that start with "s". How do you
# resolve that?

VALID_CHOICES = %w(rock paper scissors spock lizard)
WINNING_CHOICES = {
  rock: %w(lizard scissors),
  paper: %w(rock spock),
  scissors: %w(paper lizard),
  spock: %w(scissors rock),
  lizard: %w(spock paper)
}
WINNING_SCORE = 5

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

score = {
  player: 0,
  computer: 0
}

prompt('Let\'s play rock, paper, scissors, spock, lizard. '\
       'The first person to 5 wins!')

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid player.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)
  update_score(score, choice, computer_choice)

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
