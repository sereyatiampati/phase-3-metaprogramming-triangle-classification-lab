class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3
  
    def initialize(length1, length2, length3)
      @length1=length1
      @length2=length2
      @length3=length3
    end
    def kind
      @sides=Array.new
      @sides << length1
      @sides << length2
      @sides << length3
      type=@sides.uniq.length
      
      if type == 1
        :equilateral
      elsif type == 2
        :isosceles
      elsif type == 3
        :scalene
      end
    end

end
# tri=Triangle.new(2,2,2)
# pp tri.kind