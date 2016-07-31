class Recipe < ActiveRecord::Base
  # attr_accessible :name, :category, :instructions, :recipe_ingredients_attributes
  # serialize :recipe_ingredients, Array

  belongs_to :user

  has_many :profiles, through: :like_recipes
  has_many :like_recipes, dependent: :destroy
  # validates :user_id, presence: true

  has_many :recipe_ingredients, dependent: :destroy

  accepts_nested_attributes_for :recipe_ingredients, allow_destroy: true, update_only: true
end
