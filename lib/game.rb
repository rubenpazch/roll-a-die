class Game
  def initialize(list_of_sides)
    @list_of_sides = list_of_sides
    @overall_total = 0
  end

  def print_each_die
    result = ''
    counter = 1
    @list_of_sides.each do |item|
      current_value = item.roll.to_i
      @overall_total += current_value
      result += "Dice #{counter} with #{item.total_sides} sides => #{current_value} \n"
      counter += 1
    end
    result
  end

  def overall_total_values
    @overall_total.to_i
  end

  def print_overall_total
    "Overall Total  #{@overall_total}"
  end
end
