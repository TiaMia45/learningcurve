require 'test/unit'
require_relative 'rover'


class MyTest < Test::Unit::TestCase

  def setup
    @rover = Rover.new
  end

  def test_position
    position = {x: 1, y: 2}
    @rover.position = position

    assert_equal position, @rover.position
  end

  def test_orientation
    orientation = :n
    @rover.orientation = orientation

    assert_equal orientation, @rover.orientation
  end

  def test_rotate_right
    assert_rotation(:rotate_right, :n, :e)
    assert_rotation(:rotate_right, :e, :s)
    assert_rotation(:rotate_right, :s, :w)
    assert_rotation(:rotate_right, :w, :n)
  end

  def test_rotate_left
    assert_rotation(:rotate_left, :e, :n)
    assert_rotation(:rotate_left, :s, :e)
    assert_rotation(:rotate_left, :w, :s)
    assert_rotation(:rotate_left, :n, :w)
  end

  def assert_rotation(rotation, start, stop)
    @rover.orientation = start
    @rover.send(rotation)
    assert_equal stop, @rover.orientation
  end

end