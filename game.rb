require './player'

class Game

  attr_reader :players, :current_player

  def initialize(p1, p2)
    @players = [p1, p2]
    @current_player = @players[0]
  end

  def subtract_life
    puts 'Wrong Answer...'
    @current_player.life -=1
    if @current_player.life == 0
      puts '#{current_player.name}, you lose'
      puts '--- Game Over ---'
    end
  end

  def report_life
    puts "Life Remaining ==> #{players[0].name}: #{@players[0].life}/3  #{players[1].name}:#{@players[1].life}/3"
  end

  def change_player
    # puts "current player: #{@change_player}, Player1: #{@players[0]}, player2: #{@players[1]}"
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]    
    end
  end

end
