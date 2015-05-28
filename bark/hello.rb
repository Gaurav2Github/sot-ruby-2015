loop do
  puts "Hi, what's your name?"

  name = gets.strip

  if name == 'Roger'
    puts "Hey I know you!"
  elsif name == ''
    break
  else
    puts "Hi #{name}!  Nice to meet you."
  end
end
