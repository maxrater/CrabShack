class CreateMealsRecipesTable < ActiveRecord::Migration
  def change
    create_table :meals_recipes do |t|
      t.references :meal
      t.references :recipe
      t.timestamps null: false
    end
  end
end
