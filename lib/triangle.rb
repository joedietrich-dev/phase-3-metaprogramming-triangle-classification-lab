class Triangle
  def initialize(side1, side2, side3)
    if side1 <= 0 || side2 <= 0 || side3 <= 0
      raise TriangleError
    elsif side1 + side2 <= side3 || side2 + side3 <= side1 || side1 + side3 <= side2
      raise TriangleError
    else
      @side1 = side1
      @side2 = side2
      @side3 = side3
    end
  end

  def kind
    if @side1 == @side2 && @side2 == @side3
      return :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side3 == @side1
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
  end

  private 
  def is_valid(trian)

  end
end
