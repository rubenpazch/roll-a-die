require 'dice'

RSpec.describe Dice do
  describe 'Dice Class' do
      it 'returns a number between 1 to X' do
        dice = Dice.new(8)
        expect(dice.roll).to be_between(1, 8)
      end
      it 'it create a loaded die' do
        dice = Dice.new(8, 3)
        expect(dice.loaded?).to eql(true)
      end
      it 'it create non loaded die' do
        dice = Dice.new(8, nil)
        expect(dice.loaded?).to eql(false)
      end
      it 'when loaded should return loaded value half the time' do
        dice = Dice.new(8, 3)
        total_thre = 0
        1000.times do
          if  dice.roll == 3
            total_thre += 1
          end
        end
        expect(total_thre).to be_between(400, 600)
      end
      it 'when loaded should return loaded value half the time' do
      end
  end
  
  #describe 'Dice Class Forcing number' do
  #  it 'returns a number 3 half the time' do
  #    dice = Dice.new(8)
  #    expect(dice.roll).to eql(3)
  #  end
  #end
end


