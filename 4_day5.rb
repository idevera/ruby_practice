# Create an array to store the amount of money spent on 4 people during the Holidays. Have the user enter in the amount spent on each person. Print the total spent on all the people. Total money spent should be displayed with a dollar sign, decimal point, and only 2 digits after the decimal.

# Array to store all inputs from the user
total_money_spent = []

# Get four inputs from the user of only integers
puts "How much money did you spend on each of the four people during the holidays?"
# Loop over until and push into array of all money spent
4.times do
  one_person_amount = gets.chomp.to_f
  total_money_spent << one_person_amount
end

current_total = 0
# Loop to add each index of the array to the previous index
total_money_spent.each do |amount|
  current_total = current_total + amount
end

# Using the remainder operator to display exactly 2 decimal places
total_rounded = '%.2f' % current_total

# Display total money spent here
puts "Total money spent an four people: $#{total_rounded}."
