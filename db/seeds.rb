# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
BookingType.destroy_all

user = User.create!(
    name: "Ruby",
    booking_link: "zoom",
    email: ' ruby@gmail.com',
    password: '123456',
    password_confirmation: '123456'
)

booking_type1 = BookingType.create!(
    name: "Ruby",
    color: '#fbbf24',
    description: '15 minutes',
    duration: 15,
    location: 'Room 1',
    payment_required: false,
    price: nil,
    user: user,
)

booking_type12 = BookingType.create!(
    name: "Rails",
    color: '#FF0000',
    description: '30 minutes',
    duration: 30,
    location: 'Room 2',
    payment_required: false,
    price: nil,
    user: user,
)

booking_type3 = BookingType.create!(
    name: "Victor",
    color: '#34d399',
    description: '1 hour',
    duration: 60,
    location: 'Room 3',
    payment_required: true,
    price: 125,
    user: user,
)

puts "Seed finished"
