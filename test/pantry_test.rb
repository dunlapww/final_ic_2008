require 'minitest/autorun'
require './lib/ingredient'
require './lib/pantry'

class PantryTest < Minitest::Test

  def test_it_exists
    pantry = Pantry.new
    assert_instance_of Pantry, pantry
  end

  def test_it_has_attributes
    pantry = Pantry.new
    expected = {}
    assert_equal expected, pantry.stock
  end
end
