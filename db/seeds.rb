# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts '*'*200
puts 'SEEDING'
puts '*'*200
name = 'Dave Mathews Style "Jimi Thing Blues"'
keys = %w(E A B C D F G)
bpms = %w(60 68 72 86 98 106 120)

keys.each do |key|
  bpms.each do |bpm|
    track = Track.new
    track.name = "#{ name } - In #{ key } #{ bpm } BPM"
    track.bpm = bpm
    track.key_name = key
    track.save
  end
end

Dir.foreach("#{ Rails.root.to_s }/public/tracks") do |filename|
  next if filename == '.' || filename == '..'
  puts filename
end

User.create(email: 'garrettstott@gmail.com', password: 'password')