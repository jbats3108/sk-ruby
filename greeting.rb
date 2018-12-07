def determine_hour
  #fetch the hour from the current time
  current_hour = Time.new.hour
end

def greeting
  #pass hour from determine_hour
  hour = determine_hour

  #decide what time of day to announce
  if (hour > 3 && hour < 12)
    time = "morning"

  elsif (hour > 12 && hour < 18)
    time = "afternoon"

  elsif (hour > 18 || hour < 2)
		time = "evening"
  end

end

def ask_name
  puts "Hello, what is your name?"
  name = gets.chomp #removes line break from name
  hour = greeting
  puts "Hello #{name}, what a lovely #{hour} it is!"
end

ask_name
