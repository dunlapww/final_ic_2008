require 'minitest/autorun'
require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'
require './lib/cookbook'

class CookBookTest < Minitest::Test

  def test_it_exists
    cookbook = CookBook.new
    assert_instance_of CookBook, cookbook
  end

  def test_it_has_attributes
    cookbook = CookBook.new
    assert_equal [], cookbook.recipes
  end

end
