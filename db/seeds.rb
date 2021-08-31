# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

AdminUser.destroy_all
User.destroy_all
Owner.destroy_all
Property.destroy_all
Renter.destroy_all
Buyer.destroy_all
DetailRent.destroy_all
DetailSale.destroy_all

AdminUser.create!(email: 'admin@email.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

User.create(
    name: "Nicole Gonzalez",
    email: "nicole@email.com",
    role: "broker",
    password: '123456',
    password_confirmation: '123456'

)

User.create(
    name: "Carlos Perez",
    email: "carlos@email.com",
    role: "asistant",
    password: '123456',
    password_confirmation: '123456'
)



Owner.create!(
    name: "Eugenio Lopez",
    mail: "eugenio@email.com",
    phone: "+569812345678",
    rut: "11.111.111-1"   
)

Owner.create!(
    name: "Boris Mora",
    mail: "boris@email.com",
    phone: "+569812345678",
    rut: "11.111.111-1"   
)

Owner.create!(
    name: "Sebastian Gonzalez",
    mail: "sebastian@email.com",
    phone: "+569812345678",
    rut: "11.111.111-1"   
)

property_one = Property.new(
    name: "El Dorsal",
    status: "en_proceso",
    detail: Faker::Lorem.sentence,
    kind: "casa",
    adress: Faker::Address.full_address,
    rol: Faker::Number.between(from: 100, to: 200),
    negotiation: "banco",
    transaction_type: "venta",
    location: Faker::Nation.capital_city,
    city: Faker::Address.city,
    created_at: Faker::Date.between(from: '2018-01-01', to: Date.today)
)
property_one.owner = Owner.find_by(mail: "eugenio@email.com")
property_one.save!

property_one = Property.new(
    name: "Las Maravillas Oriente",
    status: "en_proceso",
    detail: Faker::Lorem.sentence,
    kind: "departamento",
    adress: Faker::Address.full_address,
    rol: Faker::Number.between(from: 100, to: 200),
    negotiation: "contado",
    transaction_type: "arriendo",
    location: Faker::Nation.capital_city,
    city: Faker::Address.city,
    created_at: Faker::Date.between(from: '2018-01-01', to: Date.today)
)
property_one.owner = Owner.find_by(mail: "eugenio@email.com")
property_one.save!

property_two = Property.new(
    name: "Camino Lonquen",
    status: "en_proceso",
    detail: Faker::Lorem.sentence,
    kind: "parcela",
    adress: Faker::Address.full_address,
    rol: Faker::Number.between(from: 100, to: 200),
    negotiation: "banco",
    transaction_type: "venta",
    location: Faker::Nation.capital_city,
    city: Faker::Address.city,
    created_at: Faker::Date.between(from: '2018-01-01', to: Date.today)
)
property_two.owner = Owner.find_by(mail: "boris@email.com")
property_two.save!

property_two = Property.new(
    name: "Lo Vasquez",
    status: "en_proceso",
    detail: Faker::Lorem.sentence,
    kind: "casa",
    adress: Faker::Address.full_address,
    rol: Faker::Number.between(from: 100, to: 200),
    negotiation: "contado",
    transaction_type: "arriendo",
    location: Faker::Nation.capital_city,
    city: Faker::Address.city,
    created_at: Faker::Date.between(from: '2018-01-01', to: Date.today)
)
property_two.owner = Owner.find_by(mail: "boris@email.com")
property_two.save!

property_three = Property.new(
    name: "Lo Campino",
    status: "en_proceso",
    detail: Faker::Lorem.sentence,
    kind: "casa",
    adress: Faker::Address.full_address,
    rol: Faker::Number.between(from: 100, to: 200),
    negotiation: "banco",
    transaction_type: "venta",
    location: Faker::Nation.capital_city,
    city: Faker::Address.city,
    created_at: Faker::Date.between(from: '2018-01-01', to: Date.today)
)
property_three.owner = Owner.find_by(mail: "sebastian@email.com")
property_three.save!

renter_one = Renter.new(
    name: "Joaquin Sepulveda",
    mail: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    rut: Faker::ChileRut.full_rut, 
    detail: Faker::Lorem.sentence   
)
renter_one.property = Property.find_by(name: "Las Maravillas Oriente")
renter_one.save!

renter_two = Renter.new(
    name: "Francisca Cabrera",
    mail: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    rut: Faker::ChileRut.full_rut, 
    detail: Faker::Lorem.sentence  
)
renter_two.property = Property.find_by(name: "Lo Vasquez")
renter_two.save!

buyer_one = Buyer.new(
    name: "Fabian Pino",
    mail: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    rut: Faker::ChileRut.full_rut, 
    detail: Faker::Lorem.sentence,
    created_at: Faker::Date.between(from: '2017-01-01', to: Date.today)
)

buyer_one.property = Property.find_by(name: "El Dorsal")
buyer_one.save!

buyer_two = Buyer.new(
    name: "Gaspar Goycoolea",
    mail: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    rut: Faker::ChileRut.full_rut, 
    detail: Faker::Lorem.sentence,
    created_at: Faker::Date.between(from: '2017-01-01', to: Date.today)
)

buyer_two.property = Property.find_by(name: "Camino Lonquen")
buyer_two.save!

buyer_three = Buyer.new(
    name: "Pedro Yañez",
    mail: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    rut: Faker::ChileRut.full_rut, 
    detail: Faker::Lorem.sentence,
    created_at: Faker::Date.between(from: '2017-01-01', to: Date.today)
)

buyer_three.property = Property.find_by(name: "Lo Campino")
buyer_three.save!


detail_rent_one = DetailRent.new(
    detail: Faker::Lorem.sentence,
    contract: "firmado",
    value: rand(250000..1000000),
    created_at: Faker::Date.between(from: '2021-01-01', to: Date.today)  
)
detail_rent_one.renter = Renter.find_by(name: "Joaquin Sepulveda")
detail_rent_one.save!

detail_rent_two = DetailRent.new(
    detail: Faker::Lorem.sentence,
    contract: "firmado",
    value: rand(250000..1000000),
    created_at: Faker::Date.between(from: '2021-01-01', to: Date.today)  
)
detail_rent_two.renter = Renter.find_by(name: "Francisca Cabrera")
detail_rent_two.save!


detail_sale_one = DetailSale.new(
    contract: %w[firmado].sample,
    purchase_contract: %w[en_conservador].sample,
    inscription: %w[en_estudio].sample,
    detail: Faker::Lorem.sentence,
    caratula: Faker::Number.number(digits: 8),
    value: rand(40000000..300000000),
    created_at: Faker::Date.between(from: '2018-01-01', to: Date.today),
    url: Faker::Internet.url
)
detail_sale_one.buyer = Buyer.find_by(name: "Fabian Pino") 
detail_sale_one.save!

detail_sale_two = DetailSale.new(
    contract: %w[pendiente].sample,
    purchase_contract: %w[en_banco en_notaria en_conservador].sample,
    inscription: %w[en_estudio].sample,
    detail: Faker::Lorem.sentence,
    caratula: Faker::Number.number(digits: 8),
    value: rand(40000000..300000000),
    created_at: Faker::Date.between(from: '2021-01-01', to: Date.today),
    url: Faker::Internet.url
)
detail_sale_two.buyer = Buyer.find_by(name: "Gaspar Goycoolea") 
detail_sale_two.save!

detail_sale_three = DetailSale.new(
    contract: %w[firmado].sample,
    purchase_contract: %w[ en_conservador].sample,
    inscription: %w[inscrita].sample,
    detail: Faker::Lorem.sentence,
    caratula: Faker::Number.number(digits: 8),
    value: rand(40000000..300000000),
    created_at: Faker::Date.between(from: '2020-01-01', to: Date.today),
    url: Faker::Internet.url
)
detail_sale_three.buyer = Buyer.find_by(name: "Pedro Yañez") 
detail_sale_three.save!
