class Recipe
  attr_reader :name, :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(ingredient, qty)
    @ingredients_required[ingredient] += qty
  end

  def ingredients
    @ingredients_required.keys
  end

  def total_calories
    @ingredients_required.reduce(0) do |sum, (ingredient, qty)|
      sum += ingredient.calories * qty
    end
  end

  def sorted_by_calories
    @ingredients_required.reduce({}) do |collector, (ingredient, qty)|
      collector[:ingredient] = ingredient.name
      collector[:amount] = "#{qty} #{ingredient.unit}"
      collector
    end
  end
end
