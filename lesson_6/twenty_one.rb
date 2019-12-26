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

def determine_winner(player_hand, dealer_hand)
  dealer_total = calculate_total(dealer_hand)
  player_total = calculate_total(player_hand)

  if dealer_total > player_total
    :dealer
  elsif player_total > dealer_total
    :player
  else
    :tie
  end
end

def display_winner(player_hand, dealer_hand)
  prompt "The dealer has #{calculate_total(dealer_hand)}. " \
         "You have #{calculate_total(player_hand)}"
  case determine_winner(player_hand, dealer_hand)
  when :dealer
    prompt "The dealer wins!"
  when :player
    prompt "You win!"
  when :tie
    prompt "It's a tie!"
  end
end

def bust?(hand)
  calculate_total(hand) > 21
end

def player_turn(deck, hand)
  action = ""

  until action == "stay" || bust?(hand)
    prompt "Would you like to hit or stay?"
    action = gets.chomp

    if action == "hit"
      deal_card!(deck, hand)
      prompt "You have: " + card_values_string(hand)
      prompt "Your total is #{calculate_total(hand)}"
    end
  end
end

def dealer_turn(deck, hand)
  dealer_total = calculate_total(hand)
  until dealer_total >= 17
    deal_card!(deck, hand)
    dealer_total = calculate_total(hand)
  end

  prompt "Dealer has: #{card_values_string(hand)}"
  prompt "Their total is #{calculate_total(hand)}"
end

def play_again?
  prompt "Would you like to play again? (Y/n)"
  play_again = gets.chomp
  play_again.upcase == "Y" || play_again.upcase == "YES"
end

def card_name(card)
  "#{card[:name]} of #{card[:suit]}"
end

loop do
  player_hand = []
  dealer_hand = []
  deck = initialize_deck
  deal_initial_hand(deck, player_hand, dealer_hand)

  prompt "Dealer has: #{card_name(dealer_hand[0])} and an unknown card"
  prompt "You have: " + card_values_string(player_hand) +
         ", for a total of #{calculate_total(player_hand)}"
  player_turn(deck, player_hand)

  if bust?(player_hand)
    prompt "You busted! Dealer wins!"
    play_again? ? next : break
  end

  dealer_turn(deck, dealer_hand)

  if bust?(dealer_hand)
    prompt "The dealer busted! You win!"
    play_again? ? next : break
  end

  display_winner(player_hand, dealer_hand)
  play_again? ? next : break
end

prompt "Thanks for playing Twenty One!"
