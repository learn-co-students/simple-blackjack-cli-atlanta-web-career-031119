def welcome
  puts"Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
 puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts"Type 'h' to hit or 's' to stay"

end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(get_user_input)
  # code #end_game here
  apology ="Sorry"
   card_total = get_user_input
  thank_you_message = "Thanks for playing!"

  puts "#{apology}, you hit #{card_total}. #{thank_you_message}"
end

def initial_round()
  # code #initial_round here
  new_sum = deal_card
  new_sum += deal_card
  return new_sum
  puts"#{new_sum}"
end

def hit?(display_card_total)
  # code hit? here
  prompt_user
  get_user_input
  # if get_user_input =='h'
  #   deal_card
  # end
  return display_card_total

end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
end
98
