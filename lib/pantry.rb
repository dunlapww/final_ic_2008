class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, qty)
    @stock[ingredient] += qty
  end

  # def enough_ingredients_for?(desired_recipe)
  #   @recipes.all? do |recipe|
  #     require "pry"; binding.pry
  #   end
  # end

end
