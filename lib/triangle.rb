class Triangle
  attr_reader :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def sides_greater_than_zero?
    [a, b, c].all?(&:positive?)
  end

  def valid_triangle_inequality?
    a + b > c && a + c > b && b + c > a
  end

  def validate_triangle
    raise TriangleError unless sides_greater_than_zero? && valid_triangle_inequality?
  end

  class TriangleError < StandardError
  end

end

# class Triangle
#   # write code here
#   attr_accessor :length1, :length2, :length3
  
#     def initialize(length1, length2, length3)
#       @length1=length1
#       @length2=length2
#       @length3=length3
#     end
#     def kind
#       @sides=Array.new
#       @sides << length1
#       @sides << length2
#       @sides << length3
#       type=@sides.uniq.length
      
#       if type == 1
#         :equilateral
#       elsif type == 2
#         :isosceles
#       elsif type == 3
#         :scalene
#       end
#     end   
# end