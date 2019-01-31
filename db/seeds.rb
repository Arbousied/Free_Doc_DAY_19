# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do
  city = City.create!(name: Faker::Address.city)
end

10.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,city_id: City.all.sample.id, zip_code: Faker::Number.number(5) )
end

10.times do
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,city_id: City.all.sample.id)
end

10.times do
  appointment = Appointment.create!(date: Faker::Date.forward(rand(1..364)), doctor_id: (rand(Doctor.first.id..Doctor.last.id)), patient_id: (rand(Patient.first.id..Patient.last.id)), city_id: City.all.sample.id)
end

10.times do
  specialty = Specialty.create!(name: Faker::Gender.type)
end

10.times do
  doctorspecialty = DoctorSpecialty.create!(doctor_id: Doctor.all.sample.id, specialty_id: Specialty.all.sample.id)
end
