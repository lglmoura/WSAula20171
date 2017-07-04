# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
(0..10).each do |i|
  @professor = Professor.create!(nome: Faker::Name.name, endereco: Faker::Name.name, telefone: Faker::PhoneNumber.phone_number )
  (0..10).each do |j|

     @disciplina = Disciplina.create!(nome: Faker::Name.name, sigla: Faker::Name.first_name, periodo: i.to_s, professor: @professor )

     (0..10).each do |l|

       Aluno.create!(nome: Faker::Name.name, endereco: Faker::Name.name, tefefone: Faker::PhoneNumber.phone_number, email: Faker::Internet.email, matricula: Faker::Name.last_name, disciplina: @disciplina)

     end

  end
end
