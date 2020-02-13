class Player

  attr_accessor :lives

  def initialize
    @lives = 3
  end

  def incorrect_decrement_lives
    @lives -= 1
  end

end