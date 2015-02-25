class CreateIngredientsRecipesTable < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.references :ingredient
      t.references :recipe
      t.string :quantity, null: false
      t.timestamps null: false
    end
  end
end
