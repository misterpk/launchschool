require 'byebug'

CARDS = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace).freeze
VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11].freeze
SUITS = %w(Hearts Diamonds Clubs Spades).freeze

def prompt(message)
  puts "=> #{message}"
end

def initialize_deck
  cards = []
  SUITS.each do |suit|
    CARDS.each_with_index do |card, index|
      cards.push({
                   name: card,
                   value: VALUES[index],
                   suit: suit
                 })
    end
  end
  cards.shuffle
end

def deal_initial_hand(deck, player_hand, dealer_hand)
  2.times do
    player_hand.push(deck.pop)
    dealer_hand.push(deck.pop)
  end
end

def deal_card!(deck, hand, player_type)
  if player_type == :player
    prompt "You hit!"
  elsif player_type == :dealer
    prompt "The dealer hits!"
  end
  hand.push(deck.pop)
end

def calculate_total(hand)
  total = hand.reduce(0) { |sum, card| sum + card[:value] }
  cards = hand.map { |card| card[:name] }
  if cards.include?("Ace")
    number_of_aces = cards.count("Ace")
    # Use low value for ace if over WINNING_SCORE
    number_of_aces.times do
      total <= WINNING_SCORE ? total : total -= 10
    end
  end
  total
end

def card_values_string(hand)
  card_string = ""
  if hand.size == 2
    "#{card_name(hand[0])} and #{card_name(hand[1])}"
  else
    hand.each_index do |index|
      if index == hand.size - 1
        return card_string += "and #{card_name(hand[index])}"
      else
        card_string += "#{card_name(hand[index])}, "
      end
    end
  end
end

def get_result(totals)
  if totals[:player] > WINNING_SCORE
    :player_busted
  elsif totals[:dealer] > WINNING_SCORE
    :dealer_busted
  elsif totals[:dealer] > totals[:player]
    :dealer
  elsif totals[:player] > totals[:dealer]
    :player
  else
    :tie
  end
end

def display_winner(result)
  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "The dealer busted! You win!"
  when :dealer
    prompt "The dealer wins!"
  when :player
    prompt "You win!"
  when :tie
    prompt "It's a tie!"
  end
end

def update_score(result, score)
  case result
  when :player_busted
    score[:dealer] += 1
  when :dealer_busted
    score[:player] += 1
  when :dealer
    score[:dealer] += 1
  when :player
    score[:player] += 1
  end
end

def bust?(player_type, totals)
  totals[player_type] > WINNING_SCORE
end

def player_turn(deck, hand, totals)
  loop do
    prompt "Would you like to (h)it or (s)tay?"
    action = gets.chomp

    if %w(hit h).include?(action.downcase)
      deal_card!(deck, hand, :player)
      totals[:player] = calculate_total(hand)
      display_hand_information(hand, :player, totals)
      break if totals[:player] > WINNING_SCORE
    elsif %w(stay s).include?(action.downcase)
      prompt "You stay!"
      break
    else
      prompt "Invalid entry. Please enter 'h' or 's'."
    end
  end
end

def dealer_turn(deck, hand, totals)
  until totals[:dealer] >= DEALER_STANDS_AT
    deal_card!(deck, hand, :dealer)
    totals[:dealer] = calculate_total(hand)
    display_hand_information(hand, :dealer, totals)
  end
  prompt "The dealer stays!" if totals[:dealer] < 22
end

def play_again?(score)
  if end_of_game?(score)
    prompt "Would you like to play again? (Y/n)"
  else
    prompt "Would you like to play another hand? (Y/n)"
  end

  play_again = gets.chomp
  play_again.upcase != "N" && play_again.upcase != "NO"
end

def card_name(card)
  "#{card[:name]} of #{card[:suit]}"
end

def display_hand_information(hand, player_type, totals)
  case player_type
  when :player
    prompt "You have: " + card_values_string(hand)
    prompt "Your total is #{totals[player_type]}"
  when :dealer
    prompt "Dealer has: " + card_values_string(hand)
    prompt "Their total is #{totals[player_type]}"
  end
end

def setup_initial_score(player_hand, dealer_hand)
  {
    player: calculate_total(player_hand),
    dealer: calculate_total(dealer_hand)
  }
end

def end_game(player_hand, dealer_hand, totals, score)
  display_players_hands(player_hand, dealer_hand, totals)
  result = get_result(totals)
  display_winner(result)
  update_score(result, score)
  puts "*" * 10
  prompt "You've won #{score[:player]} hands. " \
         "The dealer has won #{score[:dealer]} hands."
  display_overall_winner(score) if end_of_game?(score)
end

def display_players_hands(player_hand, dealer_hand, totals, move_number=nil)
  puts "*" * 10
  if move_number == 0
    prompt "Dealer has: #{card_name(dealer_hand[0])} and an unknown card"
  else
    display_hand_information(dealer_hand, :dealer, totals)
  end
  puts "*" * 10
  display_hand_information(player_hand, :player, totals)
  puts "*" * 10
end

def clear
  system('clear') || system('cls')
end

def setup_game_score
  {
    player: 0,
    dealer: 0
  }
end

def end_of_game?(score)
  score[:player] == 5 || score[:dealer] == 5
end

def display_overall_winner(score)
  if score[:player] == 5
    prompt "You've won 5 games. You win!"
  elsif score[:dealer] == 5
    prompt "The dealer has won 5 games. You lose!"
  end
end

DEALER_STANDS_AT = 17
WINNING_SCORE = 21

score = setup_game_score

loop do
  clear
  player_hand = []
  dealer_hand = []

  deck = initialize_deck
  deal_initial_hand(deck, player_hand, dealer_hand)
  totals = setup_initial_score(player_hand, dealer_hand)

  display_players_hands(player_hand, dealer_hand, totals, 0)
  player_turn(deck, player_hand, totals)

  if bust?(:player, totals)
    clear
    end_game(player_hand, dealer_hand, totals, score)
    play_again?(score) ? next : break
  end

  clear
  display_hand_information(dealer_hand, :dealer, totals)
  dealer_turn(deck, dealer_hand, totals)

  if bust?(:dealer, totals)
    end_game(player_hand, dealer_hand, totals, score)
    play_again?(score) ? next : break
  end

  end_game(player_hand, dealer_hand, totals, score)
  play_again?(score) ? next : break
end

prompt "Thanks for playing Twenty One!"
