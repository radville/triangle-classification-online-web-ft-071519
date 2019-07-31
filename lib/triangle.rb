require "pry"

class Triangle

  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end
  
  def kind
    if @one == 0 || @two == 0 || @three == 0
      # binding.pry
      # begin
        raise TriangleError
      # rescue TriangleError => error
      #     puts error.message
      end
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
    # def message 
    #   "error"
    # end
  end


end
