# frozen_string_literal: true

# This class for solution part2 in lab7
class Triangle
  def initialize(values)
    @val1 = len_side(values[0], values[2], values[1], values[3])
    @val2 = len_side(values[2], values[4], values[3], values[5])
    @val3 = len_side(values[0], values[4], values[1], values[5])
    set_pper
  end

  def set_pper
    @pper = (@val1 + @val2 + @val3) / 2
  end

  def len_side(x_val1, x_val2, y_val1, y_val2)
    ((x_val1 - x_val2)**2 + (y_val1 - y_val2)**2)**0.5
  end

  def square
    (@pper * (@pper - @val1) * (@pper - @val2) * (@pper - @val3))**0.5
  end
end

# This class for solution part2 in lab7 (children class)
class Prizma < Triangle
  def initialize(values, height)
    super(values)
    @height = height
  end

  def square
    super * 2 + [@val1, @val2, @val3].map { |elem| elem * @height }.sum
  end
end
