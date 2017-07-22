# Write a program that allows a user to play a guessing number game. Your program should generate a random number between 0 – 1000 (including 0, but not including 1000). Allow the user to make a guess until they guess the answer. After each guess you should print "higher" or "lower". When they guess it correctly print a winning message along with their total number of guesses.

# Generate a random number 0 - 1000
rand_num = rand(1..1000)
#puts rand_num

# Array to push all guesses
all_guesses = []

# Get guess input from user
puts "Guess a number from 1 to 1000!"
guessed_num = gets.chomp.to_i
all_guesses << guessed_num

# Keep asking user for input until the answer correctly
until guessed_num == rand_num
  if guessed_num > rand_num
    puts "LOWER!"
  else
    puts "HIGHER!"
  end
  all_guesses << guessed_num
  guessed_num = gets.chomp.to_i
end

# Print total guesses
puts "Total guesses: #{all_guesses.length}"
puts
puts "====== Thanks for guessing! ======"
