#!/usr/bin/ruby
require "socket"

port = 8001
server = TCPServer.open(port)

while true
  socket = server.accept
  p socket.peeraddr

  while buffer = socket.gets
    p buffer

    socket.puts "200"
  end

  socket.close
end

socket.close

