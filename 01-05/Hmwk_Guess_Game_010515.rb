puts "Select any number from 1 to 100!"

answer = rand(101)
guess = ""

while guess != answer do
  guess = gets.to_i
  answer = rand(101)
  if !guess.between?(1,100)
    puts "#{answer} was the number. Did you follow directions? That is NOT the input needed. Try again"
  elsif guess != answer #entering again?
    puts "Guess again! You are no Miss Cleo. #{answer} was the number!"
  else
    puts "That's awesome. #{answer} was the number! You are psychic."
  end
end
