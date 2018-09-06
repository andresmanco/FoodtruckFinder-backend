class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :truck_id
      t.integer :user_id
      t.string :comment
      t.integer :rating
      t.date :date
      t.timestamp
    end
  end
end
