require "socket"

port = 3000
server = TCPServer.open(port)

# wait for connection
socket = server.accept

loop do
  line = socket.readline.chomp
  puts "Read: #{line}"
  if line.bytesize == 0
    socket.write "HTTP/1.1 200 OK\r\n"
    socket.write "\r\n"
    socket.write "Hello world\r\n"
    socket.close
    break
  end
end
