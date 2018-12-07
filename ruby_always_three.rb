def always_three(number)
  #Adds 5, then multiplies that by 2, subtracts 4, divides all that by 2, then subtracts the original value from the result
  (((number + 5) * 2 -4) /2 - number).to_s
end

puts "Pick a number, any number. Any number you like!"

#Pass user input as arg to method, put result to screen
puts "It will always be #{always_three(gets.to_i)}"
