require 'dice'

RSpec.describe Dice do
  describe 'Dice Class' do
    context 'given a number' do
      it 'returns a number between 1 to X' do
        dice = Dice.new(8)
        expect(dice.roll).to be_between(1, 8)
      end
    end
  end
end


