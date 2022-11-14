# frozen_string_literal: true

# This class for solution part2 in lab7
class Triangle
  def initialize(values)
    @val1 = ((values[0] - values[1])**2 + (values[2] - values[3])**2)**0.5
    @val2 = ((values[1] - values[4])**2 + (values[3] - values[7])**2)**0.5
    @val3 = ((values[4] - values[9])**2 + (values[10] - values[11])**2)**0.5
    @pper = (@val1 + @val2 + @val3) / 2
  end

  def len_side
    
  end

  def square
    (@pper * (@pper - @val1) * (@pper - @val2) * (@pper - @val3))**0.5
  end
end

class Prizma < Triangle
  
end
