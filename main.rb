require './game'
require './player'
require './question'

# Get the name of the players
puts "Enter player 1 name: "
name1 = gets.chomp.to_s
puts "enter player 2 name: "
name2 = gets.chomp.to_s
player1 = Player.new(name1)
player2 = Player.new(name2)

# start the game now

game = Game.new(player1, player2)

# Play the game of 3 lives
while game.players[0].life > 0 and game.players[1].life > 0
  # generate a new question
  puts '---- New Turn ----'
  question = Question.new
  print "#{game.current_player.name}: #{question.gen_question}"
  answer = question.answer

  # get the answer
  input = gets.chomp.to_i

  if (input != answer)
    game.subtract_life
  end

  game.report_life

  # change player
  game.change_player

end


