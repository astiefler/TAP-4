# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# AgeRange.delete_all
# AdminUser.delete_all
# Gender.delete_all
# Country.delete_all
# State.delete_all
# Zodiac.delete_all
#
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
#
# AgeRange.create(age_range_code: '<1')
# AgeRange.create(age_range_code: '1-4')
# AgeRange.create(age_range_code: '5-9')
# AgeRange.create(age_range_code: '10-14')
# AgeRange.create(age_range_code: '15-19')
# AgeRange.create(age_range_code: '20-24')
# AgeRange.create(age_range_code: '25-29')
# AgeRange.create(age_range_code: '30-34')
# AgeRange.create(age_range_code: '35-39')
# AgeRange.create(age_range_code: '40-44')
# AgeRange.create(age_range_code: '45-49')
# AgeRange.create(age_range_code: '50-54')
# AgeRange.create(age_range_code: '55-59')
# AgeRange.create(age_range_code: '60-64')
# AgeRange.create(age_range_code: '65-69')
# AgeRange.create(age_range_code: '70-74')
# AgeRange.create(age_range_code: '75-79')
# AgeRange.create(age_range_code: '80-84')
#
# Gender.create(gender_desc: 'Male')
# Gender.create(gender_desc: 'Female')
#
require 'csv'
#
# Country.create(country_name: 'United States of America', country_abbv: 'USA')
#
# CSV.foreach('db/csv/02_state.csv', {encoding: 'UTF-8', headers: true, header_converters: :symbol, converters: :all}) do |row|
#   State.create(row.to_hash)
# end
#
# CSV.foreach('db/csv/03_zodiac.csv', {encoding: 'UTF-8', headers: true, header_converters: :symbol, converters: :all}) do |row|
#   Zodiac.create(row.to_hash)
# end
#
# CSV.foreach('db/csv/04_probability.csv', {encoding: 'UTF-8', headers: true, header_converters: :symbol, converters: :all}) do |row|
#   Probability.create(row.to_hash)
# end

CSV.foreach('db/csv/05_blood_type.csv', {encoding: 'UTF-8', headers: true, header_converters: :symbol, converters: :all}) do |row|
  BloodType.create(row.to_hash)
end