class Dice

  def initialize(sided = 6, default_value=nil)
    @total_sides = sided
    @default_value = default_value
  end
  
  def loaded?
    !@default_value.nil?
  end
  
  def roll
    return loaded_roll if loaded?
    return random_roll unless loaded?
  end

  def loaded_roll 
    temp = Random.new
    newNUmber = temp.rand(1..10) 
    if newNUmber > 5
      @default_value
    else 
      random_roll
    end
  end
  
  def random_roll
    prgn = Random.new
    prgn.rand(1..@total_sides)
  end

  def total_sides
    @total_sides
  end
end



