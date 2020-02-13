require './players.rb'
require './questions.rb'

class Game

  def initialize
    @current_player = 'Player 1'

    @first_player = Player.new
    @second_player = Player.new

    @player_1_lives = "#{@first_player.lives}/3"
    @player_2_lives = "#{@second_player.lives}/3"

  end 

  def round
    puts '----- NEW TURN -----'
    #ask a question

    if !ask_question.correct
    #something
    end

    #result of round
    puts "P1: #{@player_1_lives} vs P2: #{@player_2_lives}"

end
