class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ingredients)
    self.ingredients = Ingredient.find_or_create_by(title: recipe.title)
    self.ingredients.update(recipe)
  end

end
