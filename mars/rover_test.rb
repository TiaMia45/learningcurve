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

  def test_rotate_right
    rover = Rover.new
    orientation = :n
    rover.orientation = orientation

    rover.rotate_right


    assert_equal :e, rover.orientation
  end


end