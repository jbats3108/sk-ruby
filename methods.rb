#first basic method
def my_first_method
  puts "This is my first method in Ruby! \n \n"
end

#calls first method
my_first_method

#second method using maths
def my_math_method(num1, num2)
  answer = (num1 + num2).to_s
  puts "#{num1} + #{num2} = #{answer} \n \n"
end

#calls second method on three sets of numbers
my_math_method(89, 121)
my_math_method(69, 96)
my_math_method(420, 24)

#asks user for input of 2 numbers for the args
my_math_method(gets.to_i,gets.to_i)
