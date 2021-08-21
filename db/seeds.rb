# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.destroy_all
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

User.destroy_all
Owner.destroy_all

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



Owner.create(
    name: "Juanito Perez",
    phone: "+56912345678",
    rut: "12.222.222-1",
    mail: "juanito@email.com"
)

Owner.create(
    name: "Carolina Solis",
    phone: "+56912345678",
    rut: "12.222.222-1",
    mail: "carolinas@email.com"
)
Owner.create(
    name: "Pedrito Perez",
    phone: "+56912345678",
    rut: "12.222.222-1",
    mail: "pedritop@email.com"
)


