class Triangle

  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end
  
  def kind
    if @one == @two && @two == @three 
      :equilateral
    end
  end

  # class TriangleError < StandardError
  #   # triangle error code
  # end


end
