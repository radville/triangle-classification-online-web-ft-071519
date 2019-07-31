class Triangle

  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end
  
  def kind
    if @one == 0 || @two == 0 || @three == 0
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
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

  class TriangleError < StandardError
    # def message 
    #   # triangle error code
    # end
  end


end
