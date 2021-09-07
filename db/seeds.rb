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

Owner.create!(
    name: "Pierre Quinteros",
    mail: "pierre@email.com",
    phone: "+569812345678",
    rut: "11.111.111-1"   
)

Owner.create!(
    name: "Lucas Leiva",
    mail: "lucas@email.com",
    phone: "+569812345678",
    rut: "11.111.111-1"   
)

Owner.create!(
    name: "Francisco Osses",
    mail: "francisco@email.com",
    phone: "+569812345678",
    rut: "11.111.111-1"   
)
Owner.create!(
    name: "Federico Ramos",
    mail: "federico@email.com",
    phone: "+569812345678",
    rut: "11.111.111-1" 
)

Owner.create!(
    name: "Josefina Martínez",
    mail: "josefina@email.com",
    phone: "+569812345678",
    rut: "11.111.111-1" 
)

property_one = Property.new(
    name: "El Dorsal",
    status: "en_proceso",
    detail: "Propiedad en proceso en conservador",
    kind: "casa",
    adress: Faker::Address.full_address,
    rol: Faker::Number.between(from: 100, to: 200),
    negotiation: "banco",
    transaction_type: "venta",
    location: Faker::Nation.capital_city,
    city: Faker::Address.city,
    created_at: Faker::Date.between(from: '2020-08-01', to: Date.today)
)
property_one.owner = Owner.find_by(mail: "eugenio@email.com")
property_one.save!

property_one = Property.new(
    name: "Las Maravillas Oriente",
    status: "en_proceso",
    detail: "Arriendo vencimiento julio 2022",
    kind: "departamento",
    adress: Faker::Address.full_address,
    rol: Faker::Number.between(from: 100, to: 200),
    negotiation: "contado",
    transaction_type: "arriendo",
    location: Faker::Nation.capital_city,
    city: Faker::Address.city,
    created_at: Faker::Date.between(from: '2021-08-01', to: Date.today)
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
    created_at: Faker::Date.between(from: '2020-06-01', to: Date.today)
)
property_two.owner = Owner.find_by(mail: "boris@email.com")
property_two.save!

property_two = Property.new(
    name: "Lo Vasquez",
    status: "finalizado",
    detail: Faker::Lorem.sentence,
    kind: "casa",
    adress: Faker::Address.full_address,
    rol: Faker::Number.between(from: 100, to: 200),
    negotiation: "contado",
    transaction_type: "arriendo",
    location: Faker::Nation.capital_city,
    city: Faker::Address.city,
    created_at: Faker::Date.between(from: '2020-01-01', to: Date.today)
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
    created_at: Faker::Date.between(from: '2021-01-01', to: Date.today)
)
property_three.owner = Owner.find_by(mail: "sebastian@email.com")
property_three.save!

property_four = Property.new(
    name: "Espacio Oriente II",
    status: "finalizado",
    detail: Faker::Lorem.sentence,
    kind: "departamento",
    adress: Faker::Address.full_address,
    rol: Faker::Number.between(from: 100, to: 200),
    negotiation: "banco",
    transaction_type: "venta",
    location: Faker::Nation.capital_city,
    city: Faker::Address.city,
    created_at: "2020-01-01"
)
property_four.owner = Owner.find_by(mail: "pierre@email.com")
property_four.save!

property_five = Property.new(
    name: "Patio Chiloé",
    status: "finalizado",
    detail: Faker::Lorem.sentence,
    kind: "departamento",
    adress: Faker::Address.full_address,
    rol: Faker::Number.between(from: 100, to: 200),
    negotiation: "banco",
    transaction_type: "venta",
    location: Faker::Nation.capital_city,
    city: Faker::Address.city,
    created_at: "2020-01-01"
)
property_five.owner = Owner.find_by(mail: "lucas@email.com")
property_five.save!

property_six = Property.new(
    name: "Las Malvas",
    status: "finalizado",
    detail: Faker::Lorem.sentence,
    kind: "departamento",
    adress: Faker::Address.full_address,
    rol: Faker::Number.between(from: 100, to: 200),
    negotiation: "banco",
    transaction_type: "venta",
    location: Faker::Nation.capital_city,
    city: Faker::Address.city,
    created_at: "2020-02-01"
)
property_six.owner = Owner.find_by(mail: "francisco@email.com")
property_six.save!

property_seven = Property.new(
    name: "Las Malvas",
    status: "disponible",
    detail: "Propiedad recién publicada",
    kind: "departamento",
    adress: Faker::Address.full_address,
    rol: Faker::Number.between(from: 100, to: 200),
    negotiation: "banco",
    transaction_type: "venta",
    location: Faker::Nation.capital_city,
    city: Faker::Address.city,
    created_at: Time.now
)
property_seven.owner = Owner.find_by(mail: "federico@email.com")
property_seven.save!

property_eight = Property.new(
    name: "Espacio Oriente II",
    status: "disponible",
    detail: "Buscando arrendatario",
    kind: "departamento",
    adress: Faker::Address.full_address,
    rol: Faker::Number.between(from: 100, to: 200),
    negotiation: "contado",
    transaction_type: "arriendo",
    location: Faker::Nation.capital_city,
    city: Faker::Address.city,
    created_at: "2020-01-01"
)
property_eight.owner = Owner.find_by(mail: "josefina@email.com")
property_eight.save!

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
    created_at: Faker::Date.between(from: '2020-08-01', to: Date.today)
)

buyer_one.property = Property.find_by(name: "El Dorsal")
buyer_one.save!

buyer_two = Buyer.new(
    name: "Gaspar Goycoolea",
    mail: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    rut: Faker::ChileRut.full_rut, 
    detail: Faker::Lorem.sentence,
    created_at: Faker::Date.between(from: '2020-06-01', to: Date.today)
)

buyer_two.property = Property.find_by(name: "Camino Lonquen")
buyer_two.save!

buyer_three = Buyer.new(
    name: "Pedro Yañez",
    mail: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    rut: Faker::ChileRut.full_rut, 
    detail: Faker::Lorem.sentence,
    created_at: Faker::Date.between(from: '2021-01-01', to: Date.today)
)

buyer_three.property = Property.find_by(name: "Lo Campino")
buyer_three.save!

buyer_four = Buyer.new(
    name: "Josefina Martínez",
    mail: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    rut: Faker::ChileRut.full_rut, 
    detail: Faker::Lorem.sentence,
    created_at: "2020-01-01"
)

buyer_four.property = Property.find_by(name: "Espacio Oriente II")
buyer_four.save!

buyer_five = Buyer.new(
    name: "Mariela Suárez",
    mail: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    rut: Faker::ChileRut.full_rut, 
    detail: Faker::Lorem.sentence,
    created_at: "2020-01-01"
)

buyer_five.property = Property.find_by(name: "Patio Chiloé")
buyer_five.save!

buyer_six = Buyer.new(
    name: "Federico Ramos",
    mail: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    rut: Faker::ChileRut.full_rut, 
    detail: Faker::Lorem.sentence,
    created_at: "2020-02-01"
)

buyer_six.property = Property.find_by(name: "Las Malvas")
buyer_six.save!

detail_rent_one = DetailRent.new(
    detail: Faker::Lorem.sentence,
    contract: "firmado",
    value: rand(250000..1000000),
    created_at: "2021-08-01",
    date: "2022-07-01"
)
detail_rent_one.renter = Renter.find_by(name: "Joaquin Sepulveda")
detail_rent_one.save!

detail_rent_two = DetailRent.new(
    detail: Faker::Lorem.sentence,
    contract: "firmado",
    value: rand(250000..1000000),
    created_at: "2020-01-01",
    date: "2021-01-01"  
)
detail_rent_two.renter = Renter.find_by(name: "Francisca Cabrera")
detail_rent_two.save!


detail_sale_one = DetailSale.new(
    contract: "firmado",
    purchase_contract: "en_conservador",
    inscription: "en_estudio",
    detail: Faker::Lorem.sentence,
    caratula: Faker::Number.number(digits: 8),
    value: "120000000",
    created_at: Faker::Date.between(from: '2020-08-01', to: Date.today),
    end: Time.now,
    url: Faker::Internet.url
)
detail_sale_one.buyer = Buyer.find_by(name: "Fabian Pino") 
detail_sale_one.save!

detail_sale_two = DetailSale.new(
    contract: "firmado",
    purchase_contract: "en_notaria",
    inscription: "en_estudio",
    detail: "Demora por regularización de posesión efectiva",
    caratula: Faker::Number.number(digits: 8),
    value: "200000000",
    created_at: Faker::Date.between(from: '2020-06-01', to: Date.today),
    end: Time.now,
    url: Faker::Internet.url
)
detail_sale_two.buyer = Buyer.find_by(name: "Gaspar Goycoolea") 
detail_sale_two.save!

detail_sale_three = DetailSale.new(
    contract: "firmado",
    purchase_contract: "en_conservador",
    inscription: "en_estudio",
    detail: "Revisión en el conservador",
    caratula: Faker::Number.number(digits: 8),
    value: "95000000",
    created_at: Faker::Date.between(from: '2021-01-01', to: Date.today),
    end: Time.now,
    url: Faker::Internet.url
)
detail_sale_three.buyer = Buyer.find_by(name: "Pedro Yañez") 
detail_sale_three.save!

detail_sale_four = DetailSale.new(
    contract: "firmado",
    purchase_contract: "en_conservador",
    inscription: "inscrita",
    detail: Faker::Lorem.sentence,
    caratula: Faker::Number.number(digits: 8),
    value: "100000000",
    created_at: "2020-01-01",
    end: "2021-07-30",
    url: Faker::Internet.url
)
detail_sale_four.buyer = Buyer.find_by(name: "Josefina Martínez") 
detail_sale_four.save!

detail_sale_five = DetailSale.new(
    contract: "firmado",
    purchase_contract: "en_conservador",
    inscription: "inscrita",
    detail: Faker::Lorem.sentence,
    caratula: Faker::Number.number(digits: 8),
    value: "110000000",
    created_at: "2020-01-01",
    end: "2021-09-01",
    url: Faker::Internet.url
)
detail_sale_five.buyer = Buyer.find_by(name: "Mariela Suárez") 
detail_sale_five.save!

detail_sale_six = DetailSale.new(
    contract: "firmado",
    purchase_contract: "en_conservador",
    inscription: "inscrita",
    detail: Faker::Lorem.sentence,
    caratula: Faker::Number.number(digits: 8),
    value: "98000000",
    created_at: "2020-02-01",
    end: "2021-04-20",
    url: Faker::Internet.url
)
detail_sale_six.buyer = Buyer.find_by(name: "Federico Ramos") 
detail_sale_six.save!
