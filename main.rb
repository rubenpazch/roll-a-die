require_relative 'lib/player'
require_relative 'lib/dice'
require_relative 'lib/game'

print 'Type your name: '
def get_input
  input_value=gets.chomp
  if input_value.empty?
    puts "you didn't type anything"
    false
  else
    print "Welcome #{input_value.downcase} \n"
    input_value.downcase!
    p1 = Player.new(input_value.upcase)
  end
end

result = 0
until input = get_input
  result += 1
end



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
puts game.print_each_die
puts game.print_overall_total
