class LikeRecipe < ActiveRecord::Base
  belongs_to :user, inverse_of: :like_recipes
  belongs_to :recipe, inverse_of: :like_recipes
end
