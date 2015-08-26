class CreateCarros < ActiveRecord::Migration
  def change
    create_table :carros do |t|
      t.integer :tipo
      t.string :fabricante
      t.string :modelo
      t.string :placa

      t.timestamps null: false
    end
  end
end
