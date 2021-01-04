require_relative './players'
require_relative './questions'

puts "**********************************************"
puts "*                                            *"
puts "* * * * ! WELCOME TO THE MATH GAME ! * * * * *"
puts "*                                            *"
puts "**********************************************"
puts
puts "Please enter Player 1's name: "
player1_name = gets.chomp
puts "Please enter Player 2's name: "
player2_name = gets.chomp

player1 = Players.new(player1_name, 3)
player2 = Players.new(player2_name, 3)

puts "* * * * * ! LET'S START THE GAME ! * * * * * *"




until player1.gameover || player2.gameover
  questions = Questions.new
  puts "#{player1_name}: #{questions.show_question}"
  player_answer = gets.chomp
    if player_answer == "#{questions.answer}"
      puts "#{player1_name}: YES! You are correct."
    else 
      puts "#{player1_name}: SERIOUSLY? No !"
      player1.incorrect
    end
    if player1.gameover
      puts "#{player2_name} WINS with a score of #{player2.lives}/3"
      puts "- - - - - - - - !  GAMEOVER  ! - - - - - - - -"
      puts "GoodBye ! "
    else 
      puts "#{player1_name}: #{player1.lives}/3 vs #{player2_name}: #{player2.lives}/3"
      puts "* * * * * * * !  NEW TURN   ! * *  * * * * * *"
      puts 
    end

  questions2 = Questions.new
  puts "#{player2_name}: #{questions2.show_question}"
  player_answer = gets.chomp
    if player_answer == "#{questions2.answer}"
      puts "#{player2_name}: YES! You are correct."
    else 
      puts "#{player2_name}: SERIOUSLY? No !"
      player2.incorrect
      if player2.gameover
        puts "#{player1_name} WINS with a score of #{player1.lives}/3"
        puts "- - - - - - - - !  GAMEOVER  ! - - - - - - - -"
        puts "GoodBye ! "
      else
        puts "#{player1_name}: #{player1.lives}/3 vs #{player2_name}: #{player2.lives}/3"
        puts "* * * * * * * !  NEW TURN   ! * *  * * * * * *"
        puts 
      end
    end
end