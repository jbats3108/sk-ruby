require 'socket'

#set server & port no
server = "irc.freenode.net"
port = 6667

#open connection with supplied url and port
socket = TCPSocket.open(server,port)

#set nickname & channel and supply these to the server
nickname = "TotallyAHuman"
channel = "#the_batcave"
socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}"


#get list of inspirational quotes
inspire_me = []

list = File.open("quotes.txt")

list.each_line do |line|

  inspire_me << line

end


#while messages being sent
while message = socket.gets do

  #print them to terminal
  puts message

  #unless message starts with "PING :"
  if message.match ("^PING :")

    #then take everything from after the colon, store as variable 'server'
    server = message.split(":").last

    #send the message PONG : server.url back to the server to maintain connection.
    puts "PONG #{server}"
    socket.puts "PONG #{server}"

  #auto response if received message contains string "how are you?". Also prints it to terminal
  elsif message.match (/how are you?/)
    puts "PRIVMSG #{channel} :I am very well, thanks for asking. And you?"
    socket.puts "PRIVMSG #{channel} :I am very well, thanks for asking. And you?"

  #if message received containing 'inspire', pick a random quote from the list in quotes.txt
  elsif message.match (/inspire/)
    puts "PRIVMSG #{channel} :#{inspire_me.sample}"
    socket.puts "PRIVMSG #{channel} :#{inspire_me.sample}"

  end

end
