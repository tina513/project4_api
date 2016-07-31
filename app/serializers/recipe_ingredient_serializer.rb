class RecipeIngredientSerializer < ActiveModel::Serializer
  attributes :id, :recipe_id, :ingredient, :measure, :amount

  has_one :recipe
end
