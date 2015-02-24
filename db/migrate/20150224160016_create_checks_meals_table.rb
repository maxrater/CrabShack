class CreateChecksMealsTable < ActiveRecord::Migration
  def change
    create_table :checks_meals do |t|
      t.references :check
      t.references :meal
      t.timestamps
    end
  end
end
