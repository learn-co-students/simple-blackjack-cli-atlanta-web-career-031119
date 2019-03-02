def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here

return rand(1..11)

end

def display_card_total(card_total)
  # code #display_card_total here
 puts "Your cards add up to #{card_total}"
return card_total
end

def prompt_user
  # code #prompt_user here

puts  "Type 'h' to hit or 's' to stay"
end

def get_user_input()
  # code #get_user_input here
 return gets.chomp  

end

def end_game(card_total)
  # code #end_game here
puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round()
  no1 = deal_card()
  no2 = deal_card()
  display_card_total (no1+no2)
  # code #initial_round here

# puts sum 
# return sum
end

def hit?(card_total)
  # code hit? here
  prompt_user()
  
  input = get_user_input()
 
  if input == 'h'
    card_total = card_total + deal_card()
    #return card_total 
    else if input != 's' && input != 'h'
    invalid_command()
    prompt_user()
  end 
end 
  return card_total 
  
  #  card_total +=1 
  #else if
 #   get_user_input(input) !=="s" && get_user_input(input) !=="h"
  #  invalid_command()  
#end       
#end   
end

def invalid_command
  # code invalid_command here
   puts "Please enter a valid command"
  prompt_user()
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
cardtotal = 1 
#while cardtotal < 21

while cardtotal <= 21
welcome()
initial_round()
hit?(cardtotal)
display_card_total(cardtotal)
cardtotal = display_card_total()
end 
end_game(cardtotal)



end
    
