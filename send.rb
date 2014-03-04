require 'bundler/setup'

require 'fileutils'

require_relative 'lib/message'

FileUtils.mkdir_p 'inbox'

while line = gets
  line.chomp!
  Message.write "inbox/#{Time.now.to_f}.png", line
  puts "SENT"
end
