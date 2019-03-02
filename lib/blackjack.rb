def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  hand = 0
  2.times do
    hand += deal_card
  end
  display_card_total(hand)
  return hand
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  hand = card_total
  if input == 's'
    return hand
  elsif input == 'h'
    hand += deal_card
    return hand
  else
    invalid_command
    hit?(card_total)
  end
  return hand
end

def invalid_command
  puts "Please enter a valid command"
  sleep(2)
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
