greater_than_8 = false
did_i_see_a_num = false
did_i_see_a_symb = false
did_i_see_a_char = false

puts "Please enter a password"

## LOOP UNTIL ALL CONDITIONS ARE MET
until greater_than_8 == true && did_i_see_a_num == true && did_i_see_a_symb == true && did_i_see_a_char == true
  # Get password input from user
  password = gets.chomp.upcase.split("")

  ## LOOP TO FIND AT LEAST 8 CHARACTERS
  # If password is greater than 8 characters run code. Keep looping until you get the password you want!
  if password.length < 7
    puts
    puts "Please input a password that is at least 8 characters long"
    next
  else
    greater_than_8 = true
  end

  ## ENTIRE LOOP TO FIND A NUMBER
  # Outer loop will continue until boolean means true
  until did_i_see_a_num == true
    # Loop over an array and check to see if it has any of these numbers
    password.each do |char|
      if char == "0" || char == "1" || char == "2" || char == "3" || char == "4" || char == "5" || char == "6" || char == "7" || char == "8" || char == "9"
        # If yes, then make boolean true
        did_i_see_a_num = true
        # Stop the loop where it is and end the conditional of the inner each do loop
        break
      end
    end

    # If a number is not seen in a password, prompt user and break until loop
    if did_i_see_a_num == false
      puts
      puts "Password must contain at least one number"
      # Breaks the until loop
      break
    end
  end

  # Conditional to move to next iteration of the outer until loop
  if did_i_see_a_num == false
    next
  end

  ## LOOP TO FIND A SYMBOL
  until did_i_see_a_symb == true
    password.each do |char|
      if password.include?("@") || password.include?("%") || password.include?("*") || password.include?("!")
        did_i_see_a_symb = true
        # Will break each do loop
        break
      end
    end

    # Will break until loop
    if did_i_see_a_symb == false
      puts
      puts "Password must contain one of these symbols: @, %, *, or !"
      # Stop loop  here then
      break
    end
  end

  # Code will run here and iterate the outer until loop to recheck for all conditions
  if did_i_see_a_symb == false
    next
  end

  # LOOP TO UNTIL ONE CHARACTER IS FOUND
  until did_i_see_a_char == true
    password.each do |char|
      # Character of password array will be checked against all letters
      if char.count("A-Z") > 0
        did_i_see_a_char = true
      # Will break each do loop
        break
      end
    end

    # Will break until loop
    if did_i_see_a_char == false
      puts
      puts "Password must contain at least one letter"
      # Stop until loop  here then
      break
    end
  end

  # Brings loop back to the top to recheck for all conditions
  if did_i_see_a_char == false
    next
  end
end
puts
puts "====== Thank you for entering a valid password ======"
