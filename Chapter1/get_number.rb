# Get My Number Game
# Written by: OK
# Getting username and greeting him
puts "Welcome to 'Get My Number!'"
print 'What is your name? '
name = gets.chomp
puts "Welcome, #{name}!"

# Store a random number for the player to guess.
puts "I've got a random number between 1 and 100."
puts 'Can you guess it?'
target = rand(1...100)

# Track how many guesses the player has made.
num_guesses = 0
guessed_it = false

until num_guesses == 10 || guessed_it
  puts "You have got #{10 - num_guesses} guesses left."
  print 'Make a guess: '
  guess = gets.to_i

  num_guesses += 1

  if guess < target
    puts 'Oops, your guess was LOW'
  elsif guess > target
    puts 'Oops, your guess was HIGH'
  elsif guess == target
    puts "Good job, #{name}! You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
  end
end

unless guessed_it
  puts "Sorry, you didn't get my number! My number was #{target}!"
end
