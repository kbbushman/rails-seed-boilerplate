# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "ffaker"

speaker_count = 20

p "Deleting all Speakers..."
Speaker.destroy_all
p "Speakers deleted successfully!"

p "Creating #{speaker_count} new Speakers..."
speaker_count.times do
  Speaker.create(
    {:first => FFaker::Name.unique.first_name, :last => FFaker::Name.unique.last_name, :email => FFaker::Internet.free_email}
  )
end

p "Speakers #{speaker_count} created successfully!"
