class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    sum1 = @side1 + @side2
    sum2 = @side2 + @side3
    sum3 = @side1 + @side3
    if (@side1 <= 0 || @side2 <= 0 || @side3 <= 0)
      raise TriangleError
    elsif @side1 >= sum2 || @side2 >= sum3 || @side3 >= sum1
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif (@side1 == @side2 && @side2 != @side3)||(@side1== @side3 && @side3 != @side2)||(@side2 == @side3 && @side3 != @side1)
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end
