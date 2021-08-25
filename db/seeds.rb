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
# Property.destroy_all
# Renter.destroy_all
# Buyer.destroy_all
# DetailRent.destroy_all

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


10.times do
    Owner.create(
        name: Faker::Name.name,
        mail: Faker::Internet.email,
        phone: Faker::PhoneNumber.cell_phone,
        rut: Faker::ChileRut.full_rut   
    )
end

# 20.times do 
#     Property.create(
#         name: Faker::Name.name,
#         status: %w[en_proceso finalizado].sample,
#         detail: Faker::Lorem.sentence,
#         kind: %w[casa departamento parcela terreno].sample,
#         adress: Faker::Address.full_address,
#         rol: Faker::Number.between(from: 100, to: 200),
#         negotiation: %w[banco contado].sample,
#         transaction_type: %w[venta arriendo].sample,
#         location: Faker::Nation.capital_city,
#         city: Faker::Address.city,
#         owner_id: rand(1..10)
#     )
# end

# 10.times do 
#     Renter.create!(
#         name: Faker::Name.name,
#         mail: Faker::Internet.email,
#         phone: Faker::PhoneNumber.cell_phone,
#         rut: Faker::ChileRut.full_rut, 
#         detail: Faker::Lorem.sentence,
#         property_id: rand(1..10)
#     )
# end

# 10.times do 
#     Buyer.create!(
#         name: Faker::Name.name,
#         mail: Faker::Internet.email,
#         phone: Faker::PhoneNumber.cell_phone,
#         rut: Faker::ChileRut.full_rut, 
#         detail: Faker::Lorem.sentence,
#         property_id: rand(1..10)
#     )
# end


# 10.times do 
#     DetailRent.create!(
#         detail: Faker::Lorem.sentence,
#         contract: %w[pendiente firmado].sample,
#         value: rand(250000..5000000),
#         renter_id: rand(1..10)
#     )
# end


# 10.times do 
#     DetailSale.create!(
#         name: Faker::Name.name,
#         status: %w[en_proceso finalizado].sample,
#         detail: Faker::Lorem.sentence,
#         kind: %w[casa departamento parcela terreno].sample,
#         adress: Faker::Address.full_address,
#         rol: Faker::Number.between(from: 1, to: 6),
#         negotiation: %w[banco contado].sample,
#         transaction_type: %w[venta arriendo].sample,
#         location: Faker::Nation.capital_city,
#         city: Faker::Address.city,
#         owner_id: rand(1..10)
#     )
# end

