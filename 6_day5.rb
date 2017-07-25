# Create an array to store 5000 decimal numbers. Randomly generate numbers from between 0 – 1 (including 0, but not including 1) to fill the array. Calculate and print the mean of all the elements in the array.

all_decimal_nums = []

# Generates a random decimal number between 0 and 1 using a loop
5000.times do
  rand_num = rand
  all_decimal_nums << rand_num
end

total = 0
# Iterate over each element in the array
all_decimal_nums.each do |num|
  total = total + num
end

# Divide to calculate the average
avg = (total / 5000)
puts
puts "The average of all elements is: #{avg}."
