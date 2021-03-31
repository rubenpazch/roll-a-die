require 'game'

RSpec.describe Game do
  describe 'Game Class' do
    context 'given a list of sides' do
      it 'print a list' do
        dice = Dice.new(8)
        expect(dice.roll).to be_between(1, 8)
      end
    end
  end
end


