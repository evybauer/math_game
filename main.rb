require 'players'
require 'game'

puts {initial_message}

puts "Player 1 name:"
player1_name = gets.chomp

puts "Player 2 name:"
player2_name = gets.chomp

puts "Hello #{player1_name} and #{player2_name}, welcome to the game!"

#PROMPT
puts current_player: {question}
player_answer = gets.chomp
puts {result_output}
puts {overall_score}

#
{new_turn_message}
puts current_player: {question}
player_answer = gets.chomp
puts Player 2: {correct_answer_message} 
puts {overall_score}

#
{new_turn_message}
puts {winner_message}

#
{last_turn_message}
puts {game_over_message}