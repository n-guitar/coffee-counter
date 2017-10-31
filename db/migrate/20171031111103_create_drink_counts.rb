class CreateDrinkCounts < ActiveRecord::Migration[5.1]
  def change
    create_table :drink_counts do |t|
      t.integer :user_id
      t.boolean :cnt
      t.integer :drink_id
      t.timestamps
    end
  end
end
