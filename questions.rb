class Questions


    def ask_question

      @player_answer = gets.chomp

      if @player_answer == @answer.to_s
        puts "That's right!"
        @correct = true

      else
        puts "Nope, that's wrong!"
        @correct = false

      end
      
  end
end