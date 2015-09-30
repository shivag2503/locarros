# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

departments = [ "Engenharia", "Marketing", "Produtos", "Operações", "Comercial", "Corporativo", "RH", "Jurídico", "Contabilidade", "Financeiro", "Suporte" ]
cars_manufacturer = [ "Fiat", "Ford", "GM", "VW", "Renault", "Pegeut", "Nissan"]
users = (1..1000).to_a

def create_license
  letters = (0...3).map { ('A'..'Z').to_a.sample }.join
  numbers =  (0...4).map { (0..9).to_a.sample }.join
  return "#{letters} #{numbers}"
end

ActiveRecord::Base.transaction do
  1_000.times {
    User.create( name: Faker::Name.first_name, surname: Faker::Name.last_name, department: departments.sample, cellphone: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, phone_branch: Faker::PhoneNumber.extension)
  }

  1_400.times {
    Car.create!( type: (1..2).to_a.sample, manufacturer: cars_manufacturer.sample, model: Faker::Lorem.word, license: create_license, color: Faker::Commerce.color, user_id: users.sample)
  }
end
