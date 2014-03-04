require 'fileutils'

require_relative 'lib/message'

FileUtils.mkdir_p 'inbox'

while line = gets
  Message.write "inbox/#{Time.now.to_f}.txt", line
  puts "SENT"
end
