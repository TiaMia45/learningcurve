require 'test/unit'
require_relative 'rover'


class MyTest < Test::Unit::TestCase

  def test_initalize_rover
    rover = Rover.new
  end
end