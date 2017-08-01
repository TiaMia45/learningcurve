class Rover

  attr_accessor :position, :orientation

  DIRECTIONS = [:n, :e, :s, :w]


  def rotate_right
      current_direction_index = DIRECTIONS.index(@orientation)
      @orientation = DIRECTIONS[(current_direction_index + 1) % DIRECTIONS.count]
  end

  def rotate_left
      current_direction_index = DIRECTIONS.index(@orientation)
      @orientation = DIRECTIONS[(current_direction_index - 1) % DIRECTIONS.count]
  end


end