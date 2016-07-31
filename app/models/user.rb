#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :recipes, through: :like_recipes
  has_many :like_recipes
end
