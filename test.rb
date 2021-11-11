require_relative "player.rb"
require_relative "question.rb"
require_relative "game.rb"

class Play
game = Game.new

question = Question.new

while game.Player1.lives > 0 && game.Player2.lives > 0 do
question.generate

puts "#{game.active_player.name}: #{question.question}"
#Get user input
user_input = gets.chomp.to_i

#Checks Answer
if question.check(user_input) === true
  puts "CORRECT!!!"
  puts"#{game.active_player.name} lives = #{game.active_player.lives}"
else
  puts "WRONG AGAIN!"
  game.active_player.lose_life
  puts"#{game.active_player.name} lives = #{game.active_player.lives}"
end
game.toggle
end

puts "#{game.active_player.name} Wins!!!"

end