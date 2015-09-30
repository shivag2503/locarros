class CreateCarros < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :type
      t.string :manufacturer
      t.string :model
      t.string :plaque
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
