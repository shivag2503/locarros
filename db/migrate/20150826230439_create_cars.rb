class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :type
      t.string :manufacturer
      t.string :model
      t.string :license
      t.string :color
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
