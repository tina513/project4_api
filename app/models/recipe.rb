class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :like_recipes, dependent: :destroy
  has_many :user, through: :like_recipes
  # validates :user_id, presence: true
end
