class Rover

  attr_accessor :position, :orientation

  DIRECTIONS = [:n, :e, :s, :w]

  def rotate_right
      @orientation = increment_direction(1)
  end

  def rotate_left
    @orientation = increment_direction(-1)
  end

  def increment_direction(val)
    new_index = (current_direction_index + val) % DIRECTIONS.count
    DIRECTIONS[new_index]
  end

  def current_direction_index
    DIRECTIONS.index(@orientation)
  end

end