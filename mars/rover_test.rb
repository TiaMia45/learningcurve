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

  def test_rotate_right_n
    rover = Rover.new
    rover.orientation = :n

    rover.rotate_right


    assert_equal :e, rover.orientation
    end

  def test_rotate_right_e
    rover = Rover.new
    rover.orientation = :e

    rover.rotate_right


    assert_equal :s, rover.orientation
  end

  def test_rotate_right_s
    rover = Rover.new
    rover.orientation = :s

    rover.rotate_right


    assert_equal :w, rover.orientation
  end

  def test_rotate_right_w
    rover = Rover.new
    rover.orientation = :w

    rover.rotate_right


    assert_equal :n, rover.orientation
  end


end