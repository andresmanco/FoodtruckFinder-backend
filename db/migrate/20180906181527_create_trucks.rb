class CreateTrucks < ActiveRecord::Migration[5.2]
  def change
    create_table :trucks do |t|
      t.string :name
      t.string :type
      t.string :description
      t.string :pic
      t.string :location
      t.timestamp
    end
  end
end
