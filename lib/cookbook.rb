class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    @recipes.reduce([]) do |collector, recipe|
      recipe.ingredients_required.each do |ingredient, qty|
        collector << ingredient.name if !collector.include?(ingredient.name)
      end
      collector
    end
  end


end
