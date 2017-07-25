# Create an array to store 3 boolean values entered in by the user. Print out YES if all the values are true and NO if at least one value is false. Hint: Prompt the user to enter true or false, and accept those values using gets. Since gets will give us back a string (instead of the boolean values we want) use if statements to convert those strings to boolean values

all_answers = []

until all_answers.length == 3
  puts
  puts "Please enter TRUE or FALSE"
  user_input = gets.chomp.upcase
  puts user_input
  # User must input TRUE or FALSE
  if user_input == "TRUE" || user_input == "FALSE"
    all_answers << user_input
  end
end

puts "#{all_answers} all your answers"

boolean = true
all_answers.each do |input|
  if input == "FALSE"
    boolean = false
    puts "NO!"
    break
  end
end

if boolean == true
  puts "YES!"
end
puts
puts "THANK YOU FOR TRUE OR FALSE"
