class AddUniqueIndexToLikerecipe < ActiveRecord::Migration
  def change
    add_index :like_recipes, [:user_id, :recipe_id], unique: true
  end
end
