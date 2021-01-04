require_relative './players'
require_relative './questions'

puts "**********************************************"
puts "*                                            *"
puts "* * * * ! WELCOME TO THE MATH GAME ! * * * * *"
puts "*                                            *"
puts "**********************************************"
puts

puts "Please enter Player 1's name: "
@player1_name = gets.chomp
puts "Please enter Player 2's name: "
@player2_name = gets.chomp

@player1 = Players.new(@player1_name, 3)
@player2 = Players.new(@player2_name, 3)

puts "* * * * * ! LET'S START THE GAME ! * * * * * *"

def turns(current_player)
  questions = Questions.new
  puts "#{current_player.name}: #{questions.show_question}"

  player_answer = gets.chomp

    if player_answer == "#{questions.answer}"
      puts "#{current_player.name}: YES! You are correct."
    else 
      puts "#{current_player.name}: SERIOUSLY? No !"
    current_player.incorrect
    end

    
    puts "#{@player1_name}: #{@player1.lives}/3 vs #{@player2_name}: #{@player2.lives}/3"
  end


loop do
  turns(@player1)
    if @player1.gameover
      break puts "#{@player2_name} WINS with a score of #{@player2.lives}/3" 
    end

  turns(@player2)
    if @player2.gameover
      break puts "#{@player1_name} WINS with a score of #{@player1.lives}/3" 
    end
  puts "* * * * * * * !  NEW TURN   ! * *  * * * * * *"
end

  puts "- - - - - - - - !  GAMEOVER  ! - - - - - - - -"
  puts "- - - - - - - - !  GOODBYE   ! - - - - - - - -"