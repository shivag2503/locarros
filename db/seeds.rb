# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

departamentos = [ "Engenharia", "Marketing", "Produtos", "Operações", "Comercial", "Corporativo", "RH", "Jurídico", "Contabilidade", "Financeiro", "Suporte" ]
fabricante_carros = [ "Fiat", "Ford", "GM", "VW", "Renault", "Pegeut", "Nissan"]
usuarios = (1..1000).to_a

def criar_placa
  letras = (0...3).map { ('A'..'Z').to_a.sample }.join
  numeros =  (0...4).map { (0..9).to_a.sample }.join
  return "#{letras} #{numeros}"
end

1_000.times {
  Usuario.create( nome: Faker::Name.first_name, sobrenome: Faker::Name.last_name, departamento: departamentos.sample, celular: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email)
}

1_400.times {
  Carro.create( tipo: (1..2).to_a.sample, fabricante: fabricante_carros.sample, modelo: Faker::Lorem.word, placa: criar_placa, usuario_id: usuarios.sample)
}
