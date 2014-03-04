extname = case ARGV[0]
when 'Text'
  'txt'
when 'Image'
  'png'
when NilClass, /^\s*$/
  raise "message type can't be blank"
else
  raise "unrecognized message type: #{ARGV[0]}"
end

require 'bundler/setup'

require 'fileutils'

require_relative 'lib/message'

FileUtils.mkdir_p 'inbox'

while line = $stdin.gets
  line.chomp!
  path = "inbox/#{Time.now.to_f}.#{extname}"
  Message.write path, line
  puts "WROTE #{path}"
end
