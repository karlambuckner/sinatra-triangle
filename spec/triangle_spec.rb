require('rspec')
require('triangle')

describe(Triangle) do
  describe("#type?") do
    it("if it is not a triangle it will ask for different lengths") do
      test_triangle = Triangle.new(2, 2, 8)
      expect(test_triangle.type()).to(eq("This cannot be a triangle, please enter new lengths."))
    end

    it("returns equilateral if all sides are equal") do
      test_triangle = Triangle.new(5, 5, 5)
      expect(test_triangle.type()).to(eq("This is an equilateral triangle."))
    end

    it("returns isosceles if two sides are equal") do
      test_triangle = Triangle.new(5, 5, 3)
      expect(test_triangle.type()).to(eq("This is an isosceles triangle."))
    end

    it("returns scalene if no sides are equal") do
      test_triangle = Triangle.new(4, 5, 3)
      expect(test_triangle.type()).to(eq("This is a scalene triangle."))
    end
  end
end
