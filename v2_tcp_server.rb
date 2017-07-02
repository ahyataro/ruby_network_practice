#!/usr/bin/ruby
require "socket"

port = 8001
server = TCPServer.open(port)

while true
  Thread.start(server.accept) do |socket|
    p socket.peeraddr

    while buffer = socket.gets
      p buffer

      socket.puts "200"
    end

    socket.close
  end
end

socket.close

