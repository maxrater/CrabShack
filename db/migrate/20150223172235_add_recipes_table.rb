class AddRecipesTable < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name, unique: true, null: false
      t.decimal :cost, precision: 5, scale: 2, null: false
      t.timestamps null: false
    end
  end
end
