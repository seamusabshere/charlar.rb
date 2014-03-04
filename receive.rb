require 'bundler/setup'

require 'fileutils'

require_relative 'lib/message'

FileUtils.mkdir_p 'inbox'

loop do
  Dir["inbox/*"].each do |path|
    puts '='*50
    puts path
    puts '-'*50
    puts Message.read(path)
    puts
  end
  sleep 1
end
