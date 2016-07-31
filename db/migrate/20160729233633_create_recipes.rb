class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :category
      t.text :instructions, array: true, default: []

      t.timestamps null: false
    end
  end
end
