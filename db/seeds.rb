# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.create(name: "LET'S DANCE", artist_id: "#{a1.id}", genre_id: "#{g1.id}")

Artist.create(name: 'David Bowie', bio: 'LEGEND-- gone too soon, a Lad in Sane, freak out in a moonage daydream ohhh yeeaahah')

Genre.create(name: 'Rock')
