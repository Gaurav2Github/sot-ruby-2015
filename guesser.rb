target_number = rand(1..100)
lives_left = 6

loop do
  puts "You have #{lives_left} lives left"
  puts "Guess a number:"

  guess = gets.strip.to_i

  if guess < target_number
    puts "That's too low"
  elsif guess > target_number
    puts "That's too high"
  else
    puts "You got it!"
    break
  end

  lives_left -= 1
end
