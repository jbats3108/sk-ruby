i = 0
while i < 101
  if i % 3 == 0 && i % 5 == 0
    puts "Fizz Buzz"
  elsif i % 5 == 0
    puts "Buzz"
  elsif i % 3 == 0
    puts "Fizz"
  else
    puts i
  end
  i +=1
end
