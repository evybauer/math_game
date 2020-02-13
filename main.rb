require './players.rb'
require './questions.rb'

class Game

  attr_accessor :playerround

  def initialize
    @current_player = 'Player 1'

    @first_player = Player.new
    @second_player = Player.new

    @player_1_lives = "#{@first_player.lives}/3"
    @player_2_lives = "#{@second_player.lives}/3"

    @end = false

    until @end
      round
    end
  end 

  def round
    puts '----- NEW TURN -----'
    ask_question = Questions.new(@current_player)

    if !ask_question.correct
      incorrect_decrement_lives
    end

    if @current_player == 'Player 1'
      @current_player = 'Player 2'

    else @current_player == 'Player 2'
     @current_player = 'Player 1'

    end

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