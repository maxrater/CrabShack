class AddMealsTable < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name, unique: true, null: false
      t.references :restaurant
      t.decimal :price, precision: 5, scale: 2, null: false
      t.timestamps null: false
    end
  end
end
