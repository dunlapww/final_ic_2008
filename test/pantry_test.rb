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

  def test_stock_check
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    pantry = Pantry.new
    assert_equal 0, pantry.stock_check(ingredient1)
  end

  def test_it_can_restock
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    pantry = Pantry.new
    pantry.restock(ingredient1, 5)
    pantry.restock(ingredient1, 10)
    assert_equal 15, pantry.stock_check(ingredient1)
  end


end
