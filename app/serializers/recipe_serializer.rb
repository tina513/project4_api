class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :instructions, :ingredients, :user_id
end
