# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Song.destroy_all
Playlist.destroy_all
PlaylistSelection.destroy_all

10.times do
  u = User.new
  u.name = Faker::Name.name
  u.email = Faker::Internet.email(u.name)
  u.save
end

User.create([{name: "Dan Berger", email: "dan@berger.com"}])

48.times do
  s = Song.new
  s.name = Faker::Company.catch_phrase
  s.artist = Faker::App.author
  s.save
end

Song.create(name: "TikTok", artist: "Ke$ha")
Song.create(name: "Blah Blah Blah", artist: "Ke$ha ft. 3OH!3")

p = Playlist.new
p.user_id = User.last.id
p.name = "Dan's Super Cool Ke$ha mix"
p.save

t = Song.find_by_name "TikTok"
b = Song.find_by_name "Blah Blah Blah"

PlaylistSelection.create([{playlist_id: p.id, song_id: t.id}, {playlist_id: p.id, song_id: b.id}])
