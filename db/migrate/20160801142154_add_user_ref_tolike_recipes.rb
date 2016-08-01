class AddUserRefTolikeRecipes < ActiveRecord::Migration
  def change
    add_reference :like_recipes, :user, index: true, foreign_key: true
  end
end
