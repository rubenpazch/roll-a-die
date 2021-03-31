require 'game'

RSpec.describe Game do
  before do
    @list_of_sides = Array.new
    (0..1).each do |item|
      dice = Dice.new(1)
      @list_of_sides.push(dice)
    end
  end

  describe 'Game Class' do
    it 'print a list' do
      game = Game.new(@list_of_sides)
      string_result = game.print_each_die
      expect(string_result).to match("Dice 1 with 1 sides => 1 \nDice 2 with 1 sides => 1 \n")
    end
  end

  describe 'Game Class' do
    it 'return overall total' do
      game = Game.new(@list_of_sides)
      game.print_each_die
      overall = game.overall_total_values
      expect(overall).to eql(2)
    end
  end
end


