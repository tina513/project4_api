class LikeRecipeSerializer < ActiveModel::Serializer
  attributes :id, :recipe_id, :user_id, 
  has_one :recipe
  has_one :user
end
