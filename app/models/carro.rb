class Carro < ActiveRecord::Base

  belongs_to :usuario, foreign_key: "usuario_id"

  scope :por_placa, ->(placa) { where('placa = ?', placa) }
end
