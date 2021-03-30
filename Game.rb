class Game
  def initialize(list_of_sides)
    @list_of_sides = list_of_sides
    @overall_total = 0
  end

  def print_each_die
    @list_of_sides.each do |item|
      current_value = item.roll.to_i
      puts current_value
      @overall_total += current_value
    end
  end

  def print_overall_values
    puts @overall_total
  end
end
