class Dice

  def initialize(sided = 6)
    @total_sides = sided
  end

  def roll
    prgn = Random.new
    prgn.rand(1..@total_sides)
  end

  def total_sides
    @total_sides
  end
end



