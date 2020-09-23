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

  def enough_ingredients_for?(recipe)
    recipe.ingredients_required.each do |ingred, qty|
      @stock.each do |ingredient, quantity|
        return false if @stock[ingred] < qty
      end
    end
    true
  end

end
