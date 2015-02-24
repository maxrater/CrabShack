class AddCheckTable < ActiveRecord::Migration
  def change
    create_table :checks do |t|
      t.references :restaurant
      t.timestamps null: false
    end
  end
end
