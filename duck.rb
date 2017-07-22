# Write a program that plays duck duck goose. Allow the user to enter the player's number they want to call goose on, and then say "duck" for each player before the "goose", then say "goose" for the chosen player.

# Which player do you want to Goose? 5
#
# Player 1: Duck
# Player 2: Duck
# Player 3: Duck
# Player 4: Duck
# Player 5: Goose

puts "Which player do you want to Goose?"
# Ask user for which player they want to choose
user_choice = gets.chomp.to_i
puts
# Iterator needs to start at 1 because player number is 1
i = 1
until user_choice == i
  puts "Player #{i}: Duck"
  # Don't forget to add this iterator to the loop or it will be infinite
  i += 1
end
puts "Player #{i}: Goose"
