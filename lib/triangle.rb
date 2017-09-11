class Triangle
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def type
    if (@length1 + @length2 <= @length3) or (@length3 + @length2 <= @length1) or (@length1 + @length3 <= @length2)
      'This cannot be a triangle, please enter new lengths.'
    elsif (@length1 != @length2) && (@length2 != @length3) && (@length1 != @length3)
    'This is a scalene triangle.'
    elsif (@length1 == @length2 = @length3)
    'This is an equilateral triangle.'
    elsif (@length1 == @length2 && @length1 != @length3) or (@length2 == @length3 && @length2 != @length1) or (@length3 == @length1 && @length3 != @length2)
      'This is an isosceles triangle.'
    end
  end
end
