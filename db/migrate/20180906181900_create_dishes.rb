class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :pic
      t.integer :truck_id
      t.timestamp
    end
  end
end
