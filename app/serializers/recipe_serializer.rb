class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :instructions, :recipe_ingredients
  has_one :user
  has_many :recipe_ingredients
end
