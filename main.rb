require './players.rb'
require './questions.rb'

class Game

  def initialize
    @current_player = 'Player 1'

    @first_player = Player.new
    @second_player = Player.new
  end 
  
end
