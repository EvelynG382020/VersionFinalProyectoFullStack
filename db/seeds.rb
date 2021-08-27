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
DetailRent.destroy_all
Buyer.destroy_all
DetailSale.destroy_all

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

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


(1..10).each do |id|
    Owner.create!(
        id: id,
        name: Faker::Name.name,
        mail: Faker::Internet.email,
        phone: Faker::PhoneNumber.cell_phone,
        rut: Faker::ChileRut.full_rut   
    )
end

(1..10).each do |id|
    Property.create!(
        id: id,
        owner_id: rand(1..10),
        name: Faker::Name.name,
        status: %w[en_proceso disponible finalizado].sample,
        detail: Faker::Lorem.sentence,
        kind: %w[casa departamento parcela terreno].sample,
        adress: Faker::Address.full_address,
        rol: Faker::Number.between(from: 100, to: 200),
        negotiation: %w[banco contado].sample,
        transaction_type: %w[venta arriendo].sample,
        location: Faker::Nation.capital_city,
        city: Faker::Address.city
        
    )
end

(1..10).each do |id| 
    Renter.create!(
        id: id,
        property_id: rand(1..10),
        name: Faker::Name.name,
        mail: Faker::Internet.email,
        phone: Faker::PhoneNumber.cell_phone,
        rut: Faker::ChileRut.full_rut, 
        detail: Faker::Lorem.sentence
        
    )
end

(1..10).each do |id| 
    DetailRent.create!(
        id: id,
        renter_id: rand(1..10),
        detail: Faker::Lorem.sentence,
        contract: %w[pendiente firmado].sample,
        value: rand(250000..1000000)
        
    )
end

(1..10).each do |id|
    Buyer.create!(
        id: id,
        property_id: rand(1..10),
        name: Faker::Name.name,
        mail: Faker::Internet.email,
        phone: Faker::PhoneNumber.cell_phone,
        rut: Faker::ChileRut.full_rut, 
        detail: Faker::Lorem.sentence
    
    )
end

(1..10).each do |id| 
    DetailSale.create!(
        id: id,
        buyer_id: rand(1..10),
        contract: %w[pendiente firmado].sample,
        purchase_contract: %w[en_banco en_notaria conservador finalizado].sample,
        inscription: %w[en_estudio inscrita].sample,
        detail: Faker::Lorem.sentence,
        caratula: Faker::Number.number(digits: 8),
        value: rand(40000000..300000000),
        created_at: Faker::Date.between(from: '2017-01-01', to: Date.today),
        url: Faker::Internet.url
  
    )
end

