require_relative "player.rb"

class Game
  attr_reader :Player1, :Player2, :active_player
  def initialize
    @Player1 = Player.new('player1')
    @Player2 = Player.new('player2')
    @active_player = @Player1
  end

  def get_active_player
    if @Player1.active
      @active_player = @player1
    elsif @Player2.active
      @active_player = @player2
    end
  end

  def toggle
    if @active_player === @Player1 
       @active_player = @Player2
    elsif @active_player === @Player2
      @active_player = @Player1
    end
  end 
end
