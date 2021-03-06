# Create an array to store 5 random numbers (between 1 and 10, including both 1 and 10) generated by the computer. Print out the square of each of the elements in the array.

# New array
all_rand_num = Array.new

# Generate a new number 5 times
5.times do
  rand_num = rand(1..10)

  all_rand_num.push(rand_num)
end

# Loop over each number in the new array and multiply it by each other (square)
all_rand_num.each do |num|
  puts num * num
end

puts
puts "These are the squares of the numbers that were randomly generated!"
