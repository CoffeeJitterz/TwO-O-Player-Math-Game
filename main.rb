require_relative "player.rb"
require_relative "question.rb"
require_relative "game.rb"

class PLAY 
  #create players
  Player1 = Player.new('Player1')
  Player2 = Player.new('Player2')
  GameQuestion = Question.new

  while Player1.lives > 0 && Player2.lives > 0 do
    #set current payer
    Player1.current_player
    Player2.not_current_player
    #Generate player1 Question
    GameQuestion.generate
    puts "Player1 #{GameQuestion.question}"

    #Get user input
    user_input = gets.chomp.to_i

    #Checks Answer
    if GameQuestion.check(user_input) === true
      puts "CORRECT!!!"
      puts"Player1 lives = #{Player1.lives}"
    else
      puts "WRONG AGAIN!"
      Player1.lose_life
      puts"Player1 lives = #{Player1.lives}"
    end

    #switch current player
    Player2.current_player
    Player1.not_current_player
    #Generate player2 Question
    GameQuestion.generate
    puts "Player2 #{GameQuestion.question}"

    #Get user input
    user_input = gets.chomp.to_i

    puts GameQuestion.check(user_input)
    #Checks Answer
    if GameQuestion.check(user_input) === true
      puts "CORRECT!!!"
      puts"Player2 lives = #{Player2.lives}"
    else
      puts "WRONG AGAIN!"
      Player2.lose_life
      puts"Player2 lives = #{Player2.lives}"
    end
  end
  puts "Somebody Won!"
end

