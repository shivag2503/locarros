class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :departamento
      t.string :email
      t.string :celular

      t.timestamps null: false
    end
  end
end
