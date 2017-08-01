class Rover

  attr_accessor :position, :orientation

  def rotate_right
    if @orientation == :n
      @orientation = :e
    elsif @orientation == :e
      @orientation = :s
    elsif @orientation == :s
      @orientation = :w
    elsif @orientation == :w
      @orientation = :n
    end
  end


end