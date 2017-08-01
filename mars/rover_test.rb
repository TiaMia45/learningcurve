require 'test/unit'
require_relative 'rover'


class MyTest < Test::Unit::TestCase

  def test_position
    rover = Rover.new
    position = {x: 1, y: 2}
    rover.position = position

    assert_equal position, rover.position
  end

  def test_orientation
    rover = Rover.new
    orientation = :n
    rover.orientation = orientation

    assert_equal orientation, rover.orientation
  end


end