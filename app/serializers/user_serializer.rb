#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :like_recipes, :recipes
end
