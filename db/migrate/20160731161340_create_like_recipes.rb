class CreateLikeRecipes < ActiveRecord::Migration
  def change
    create_table :like_recipes do |t|
      t.references :profile, index: true, foreign_key: true
      t.references :recipe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
