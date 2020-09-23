require 'minitest/autorun'
require './lib/ingredient'
require './lib/pantry'

class IngredientTest < Minitest::Test

  def test_it_exists
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    assert_equal Ingredient, ingredient1
  end
end
