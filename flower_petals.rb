# Write a program that allows a user to enter the number of petals on a flower. Then one by one, print “plucking petal #1: they love me!”. Alternate “They love me” and “They love me not” as well as increase the petal number for each petal.

puts "How many petals are on your flower?"
num_petals = gets.chomp.to_i
puts

# Start loop to count petals
i = 0
until num_petals == i
  i += 1
  # if the iteration is an odd number
  if i.odd?
    puts "Plucking Petal #{i}: Victor loves me!"
  else
    puts "Plucking Petal #{i}: Victor loves me not :("
  end
end
