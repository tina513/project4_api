class RecipeIngredient < ActiveRecord::Base
  # attr_accessible :ingredient, :measure, :amount, :recipe, :recipe_attributes
  # serialize :recipe_ingredients, Array

  belongs_to :recipe, inverse_of: :recipe_ingredients

end
