require_relative('../models/artist')
require_relative('../models/genre')
require_relative('../models/album')

Album.delete_all()
Genre.delete_all()
Artist.delete_all()

artist1 = Artist.new({'name' => 'Father John Misty'})
artist1.save()

artist2 = Artist.new({'name' => 'Ryan Adams'})
artist2.save()

artist3 = Artist.new({'name' => 'Midlake'})
artist3.save()

artist4 = Artist.new({'name' => 'My Morning Jacket'})
artist4.save()

artist5 = Artist.new({'name' => 'Bob Dylan'})
artist5.save()

artist6 = Artist.new({'name' => 'Hank Marvin'})
artist6.save()

artist7 = Artist.new({'name' => 'Abba'})
artist7.save()

artist8 = Artist.new({'name' => 'Staves'})
artist8.save()

artist9 = Artist.new({'name' => 'Dodgy'})
artist9.save()

artist10 = Artist.new({'name' => 'Fun Lovin Criminals'})
artist10.save()

artist11 = Artist.new({'name' => 'Gene'})
artist11.save()

artist12 = Artist.new({'name' => 'Jayhawks'})
artist12.save()

artist13 = Artist.new({'name' => 'Kula Shaker'})
artist13.save()

artist14 = Artist.new({'name' => 'Lovin Spoonful'})
artist14.save()

artist15 = Artist.new({'name' => 'Whiskeytown'})
artist15.save()

artist16 = Artist.new({'name' => 'Eric Clapton'})
artist16.save()

artist17 = Artist.new({'name' => 'David Bowie'})
artist17.save()

artist18 = Artist.new({'name' => 'Doors'})
artist18.save()

artist19 = Artist.new({'name' => 'Led Zepelin'})
artist19.save()

artist20 = Artist.new({'name' => 'Modest Mouse'})
artist20.save()

genre1 = Genre.new({'type' => 'Acoustic'})
genre1.save()

genre2 = Genre.new({'type' => 'Indie'})
genre2.save()

genre3 = Genre.new({'type' => 'Rock'})
genre3.save()

genre4 = Genre.new({'type' => 'Pop'})
genre4.save()

genre5 = Genre.new({'type' => 'Electro'})
genre5.save()

genre6 = Genre.new({'type' => 'House'})
genre6.save()

genre7 = Genre.new({'type' => 'Hip Hop'})
genre7.save()

genre8 = Genre.new({'type' => 'Emo'})
genre8.save()

genre9 = Genre.new({'type' => 'Metal'})
genre9.save()

genre10 = Genre.new({'type' => 'Grunge'})
genre10.save()

album1 = Album.new({
  'title' => 'Blonde on Blonde',
  'quantity' => 10,
  'cost_price' => 90,
  'artist_id' => artist5.id,
  'genre_id' => genre1.id
})
album1.save()

album2 = Album.new({
  'title' => 'Z',
  'quantity' => 15,
  'cost_price' => 25,
  'artist_id' => artist4.id,
  'genre_id' => genre2.id
})
album2.save()

album3 = Album.new({
  'title' => 'Gold',
  'quantity' => 20,
  'cost_price' => 45,
  'artist_id' => artist2.id,
  'genre_id' => genre3.id
})
album3.save()

album4 = Album.new({
  'title' => 'The Courage of Others',
  'quantity' => 5,
  'cost_price' => 21,
  'artist_id' => artist3.id,
  'genre_id' => genre2.id
})
album4.save()

album5 = Album.new({
  'title' => 'Fear Fun',
  'quantity' => 25,
  'cost_price' => 19,
  'artist_id' => artist1.id,
  'genre_id' => genre2.id
})
album5.save()

album6 = Album.new({
  'title' => 'Heartbreaker',
  'quantity' => 5,
  'cost_price' => 55,
  'artist_id' => artist2.id,
  'genre_id' => genre1.id
})
album6.save()

album7 = Album.new({
  'title' => '3',
  'quantity' => 3,
  'cost_price' => 150,
  'artist_id' => artist19.id,
  'genre_id' => genre3.id
})
album7.save()

album8 = Album.new({
  'title' => 'Ziggy Stardust',
  'quantity' => 2,
  'cost_price' => 225,
  'artist_id' => artist17.id,
  'genre_id' => genre4.id
})
album8.save()

album9 = Album.new({
  'title' => 'K',
  'quantity' => 22,
  'cost_price' => 15,
  'artist_id' => artist13.id,
  'genre_id' => genre2.id
})
album9.save()

album10 = Album.new({
  'title' => 'LA Woman',
  'quantity' => 1,
  'cost_price' => 400,
  'artist_id' => artist18.id,
  'genre_id' => genre3.id
})
album10.save()