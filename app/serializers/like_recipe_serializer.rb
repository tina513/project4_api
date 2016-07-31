class LikeRecipeSerializer < ActiveModel::Serializer
  attributes :id, :recipe
  has_one :profile
  has_one :recipe
end
