class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :instructions
  has_one :user
end
