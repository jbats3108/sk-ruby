
#Include twilio
require "rubygems"
require "twilio-ruby"

#Twilio authentication
account_sid = "ACa9823d4f5809129b1b6e091e82c4db79"
auth_token = "33a274f748a51626526489a1ef1f8547"

@client = Twilio::REST::Client.new(account_sid, auth_token)

#List of 8 ball answers
magic_8ball = ["It is certain","It is decidedly so","Without a doubt","Yes - definitely","You may rely on it","As I see it, yes","Most likely","Outlook good","Yes","Signs point to yes","Reply hazy, try again","Ask again later","Better not tell you now","Cannot predict now","Concentrate and ask again","Don't count on it","My reply is no","My sources say no","Outlook not so good","Very doubtful"]

puts "Ask me a Yes/No question:"

#Get the user to input a question
puts "Your question: #{gets}"

puts "Where shall I send your answer? (Please include the country code)"

#Get the user's number
recipient = gets.to_s

puts "Your answer will be sent to #{recipient.chomp} very soon!"

message = @client.messages
  .create(
    #Randomly select from the list of answers, use as msg body
    body: magic_8ball.sample,

    #twilio number as the 'from'
    from: "+447449535561",

    #Send the answer to the number inputted above
    to: "#{recipient}"
  )
