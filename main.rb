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

  def incorrect_decrement_lives
    if @current_player == 'Player 1'
      @first_player.incorrect_decrement_lives
      @player_1_lives = "#{@first_player.lives}/3"

      if @first_player.lives === 0
        @end = true
        puts '----- GAME OVER -----'

      end

    else
      @second_player.incorrect_decrement_lives
      @player_2_lives = "#{@second_player.lives}/3"

      if @second_player.lives === 0
        @end = true
        puts '----- GAME OVER -----'

      end

    end

  end
end


start = Game.new