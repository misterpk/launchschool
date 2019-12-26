require 'byebug'

CARDS = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)
VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11]
SUITS = %w(Hearts Diamonds Clubs Spades)

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

def deal_card!(deck, hand)
  hand.push(deck.pop)
end

def calculate_total(hand)
  total = hand.reduce(0) { |sum, card| sum + card[:value] }
  cards = hand.map { |card| card[:name] }
  if cards.include?("Ace")
    number_of_aces = cards.count("Ace")
    # Use low value for ace if over 21
    number_of_aces.times do
      total <= 21 ? total : total -= 10
    end
    total
  else
    total
  end
end

def card_values_string(hand)
  card_string = ""
  if hand.size == 2
    "#{hand[0][:name]} and #{hand[1][:name]}"
  else
    hand.each_index do |index|
      if index == hand.size - 1
        return card_string += "and #{hand[index][:name]}"
      else
        card_string += "#{hand[index][:name]}, "
      end
    end
  end
end

def determine_winner(player_hand, dealer_hand)
  dealer_total = calculate_total(dealer_hand)
  player_total = calculate_total(player_hand)

  case
  when dealer_total > player_total
    "dealer"
  when player_total > dealer_total
    "player"
  else
    "tie"
  end
end

def display_winner(player_hand, dealer_hand)
  puts "The dealer has #{calculate_total(dealer_hand)}. You have #{calculate_total(player_hand)}"
  case determine_winner(player_hand, dealer_hand)
  when "dealer"
    puts "The dealer wins!"
  when "player"
    puts "You win!"
  when "tie"
    puts "It's a tie!"
  end
end

def bust?(total)
  total > 21
end

def player_turn(deck, hand)
  action = ""
  player_total = calculate_total(hand)

  until action == "stay" || bust?(player_total)
    puts "Would you like to hit or stay?"
    action = gets.chomp

    if action == "hit"
      deal_card!(deck, hand)
      puts "You have: " + card_values_string(hand)
      player_total = calculate_total(hand)
    end
  end
end

def dealer_turn(deck, hand)
  dealer_total = calculate_total(hand)
  until dealer_total >= 17
    deal_card!(deck, hand)
    dealer_total = calculate_total(hand)
  end

  puts "Dealer has: #{card_values_string(hand)}"
end

def play_again?
  puts "Would you like to play again? (Y/n)"
  play_again = gets.chomp
  play_again.upcase == "Y" || play_again.upcase == "YES"
end

loop do
  player_hand = []
  dealer_hand = []
  deck = initialize_deck
  deal_initial_hand(deck, player_hand, dealer_hand)

  puts "Dealer has: #{dealer_hand[0][:name]} and an unknown card"
  puts "You have: " + card_values_string(player_hand)

  player_turn(deck, player_hand)

  if bust?(calculate_total(player_hand))
    puts "You busted! Dealer wins!"
    play_again? ? next : break
  end

  dealer_turn(deck, dealer_hand)

  if bust?(calculate_total(dealer_hand))
    puts "The dealer busted! You win!"
    play_again? ? next : break
  end

  display_winner(player_hand, dealer_hand)
  play_again? ? next : break
end

puts "Thanks for playing Twenty One!"
