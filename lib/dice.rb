class Dice

  def initialize(sided = 6)
    @sided = sided
  end

  def roll
    prgn = Random.new
    prgn.rand(1..@sided)
  end
end



