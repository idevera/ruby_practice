all_names = Array.new

5.times do
puts "Please enter five names"
  input_name = gets.chomp.upcase
  all_names.push(input_name)
end

i = 0
until  all_names.length == i
  print all_names[i] + " "
  i += 1
end
