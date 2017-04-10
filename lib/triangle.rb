require 'pry'

class Triangle

	attr_accessor :equilateral, :isosceles, :scalene, :TriangleError

	def initialize(side1, side2, side3)
		@side1 = side1
		@side2 = side2
		@side3 = side3
		@size = [@side1, @side2, @side3]
		@size.each do |side|
			if side <= 0
			  raise TriangleError
		    end
		end
	end

	def kind
		if @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
			raise TriangleError
		elsif @side1 == @side2 && @side1 == @side3
			:equilateral
		elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
			:isosceles
		else
			:scalene
		end

	end


end


class TriangleError < RangeError
	def message 
        "error"
   end
  	
end