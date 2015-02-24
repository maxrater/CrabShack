class AddRestaurantTable < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null: false, unique: true
      t.integer :owner_id, null: false
      t.integer :manager_id, null: false
      t.timestamps null: false
    end
  end
end
