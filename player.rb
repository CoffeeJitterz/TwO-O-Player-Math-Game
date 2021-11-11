class Player
  attr_reader :name, :lives, :active
  def initialize(name)
    @name = name
    @lives = 3
    @active = false
  end

  def lose_life
    @lives -= 1
  end

  def current_player
    @active = true
  end

  def not_current_player
    @active = false
  end

end