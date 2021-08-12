class Triangle
  # write code here
    attr_accessor :x, :y, :z

    def initialize(x, y, z)
      @x = x
      @y = y
      @z = z
    end

    def kind
      sides
      triangle_inequality
      if x == y && x == z
        :equilateral
      elsif x == y || x == z || y == z
        :isosceles
      else
        :scalene
      end
    end

    def sides
      if x <= 0 || y <= 0 || z <= 0
        raise TriangleError
      end
    end

    def triangle_inequality
      if (x + y > z && x + z > y && y + z > x) == false
        raise TriangleError
      end
    end

    

    class TriangleError < StandardError
    end
end
