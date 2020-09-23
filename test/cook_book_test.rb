require 'minitest/autorun'
require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'
require './lib/cook_book'

class CookBookTest < Minitest::Test

  def test_it_exists
    cookbook = CookBook.new
    assert_instance_of Cookbook, cookbook
  end
end
