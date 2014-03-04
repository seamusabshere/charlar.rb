require 'set'

seen = Set.new

loop do
  Dir["messages/*.txt"].reject do |path|
    seen.include? path
  end.each do |path|
    seen << path
    puts File.read(path)
    puts "END OF MESSAGE"
  end
  sleep 1
end
