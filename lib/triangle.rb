class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a == b && b == c
      return :equilateral
    elsif
      a == b && b != c || a ==c && c != b || a == b || b ==c || a == c
      return :isosceles
    elsif
      a != b && a != c && b != c
      :scalene
    else
      if kind.class != Triangle
        begin
          raise TriangleError
        rescue TriangleError => error
          puts error.message
        end
     end
    end
  end

  class TriangleError < StandardError
    def message
      "Not a triangle!"
    end
  end


end
