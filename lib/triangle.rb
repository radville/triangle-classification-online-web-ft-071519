require "pry"

class Triangle

  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end
  
  def kind
    if @one <= 0 || @two <= 0 || @three <= 0 || @one + @two <= @three|| @one + @three <= @two|| @two + @three <= @one
      raise TriangleError
    else
      if @one == @two && @two == @three 
        :equilateral
      elsif @one == @two|| @two == @three || @one == @three
        :isosceles
      elsif @one != @two && @two != @three && @one != @three
        :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message 
      "Triangle error"
    end
  end


end
