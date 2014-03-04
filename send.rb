while line = gets
  File.open("messages/#{Time.now.to_f}.txt", 'w') { |f| f.write line }
  puts "SENT"
end
