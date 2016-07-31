class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.string :ingredient
      t.string :measure
      t.integer :amount
      t.references :recipe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
