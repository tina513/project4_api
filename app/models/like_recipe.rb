class LikeRecipe < ActiveRecord::Base
  belongs_to :profile, inverse_of: :like_recipes
  belongs_to :recipe, inverse_of: :like_recipes
end
