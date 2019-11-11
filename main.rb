require './questions'
require './player'

puts "ARE YOU READY TO PLAY?"

puts '========================'
puts 'Player 1, what is your name?'
puts '========================'

player1 = $stdin.gets.chomp
firstPlayer = Player.new(player1)

puts '========================'
puts 'Player 2, what is your name?'
puts '========================'

player2 = $stdin.gets.chomp
secondPlayer = Player.new(player2)

playerTurn = 1
round = 0

while (firstPlayer.lives && secondPlayer.lives)
  player = (playerTurn == 1) ? firstPlayer : secondPlayer

  question = Question.new()

  puts '======================='
  puts "ROUND #{round}"
  puts "Now it's #{player.name}'s turn"
  puts '======================='
  
  puts "#{player.name}, what is the answer to:"
  puts question.prompt

  answer = $stdin.gets.chomp.to_i
  
  if (answer == question.sum) 
    puts "YES! congrats"
  elsif 
     player.lives -= 1
     puts "Sorry, that's wrong, #{player.name} has #{player.lives} lives remaining"
  end
  
  playerTurn = (playerTurn + 1) % 2
  round = round + 1

  if(player.lives.to_i < 1)
    player = (playerTurn == 1) ? firstPlayer : secondPlayer
    puts '============================'
    puts '============================'
    puts "#{player.name} won with #{player.lives} remaining!"
    puts '============================'
    puts '============================'
    return
  end 
end









