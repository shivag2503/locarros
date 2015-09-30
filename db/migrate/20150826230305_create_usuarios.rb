class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :department
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
