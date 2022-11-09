puts 'Cleaning the DB...'
Restaurant.destroy_all
puts 'DB is clean!'

puts 'Creating 5 restaurants...'

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "Restaurant #{restaurant.id} was created"
end

puts 'All done!'
