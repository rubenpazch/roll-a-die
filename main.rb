require_relative 'Player'
require_relative 'Dice'
require_relative 'Game'

#puts 'Enter your name: '
#name = gets.chomp

#p1 = Player.new(name)

puts 'How many dice are to be rolled: '
total_dice = gets.chomp.to_i

list_of_sides = Array.new

(0..total_dice - 1).each do |item|
  puts "Total sides for dice number #{item + 1} : "
  total_sides = gets.chomp.to_i
  dice = Dice.new(total_sides)
  list_of_sides.push(dice)
end

#p list_of_sides[0].roll

game = Game.new(list_of_sides)
game.print_each_die
game.print_overall_values
