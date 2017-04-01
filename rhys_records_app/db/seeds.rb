require_relative('../models/artist')
require_relative('../models/genre')
require_relative('../models/album')

require('pry')

Album.delete_all()
Genre.delete_all()
Artist.delete_all()

artist1 = Artist.new({
  'name' => 'Father John Misty'
})

artist1.save()

artist2 = Artist.new({
  'name' => 'Ryan Adams'
})

artist2.save()

artist3 = Artist.new({
  'name' => 'Midlake'
})

artist3.save()

artist4 = Artist.new({
  'name' => 'My Morning Jacket'
})

artist4.save()

artist5 = Artist.new({
  'name' => 'Bob Dylan'
})

artist5.save()

genre1 = Genre.new({
  'type' => 'Acoustic'
})

genre1.save()

genre2 = Genre.new({
  'type' => 'Indie'
})

genre2.save()

genre3 = Genre.new({
  'type' => 'Rock'
})

genre3.save()

album1 = Album.new({
  'title' => 'Blonde on Blonde',
  'quantity' => 1,
  'cost_price' => 90,
  'artist_id' => artist5.id,
  'genre_id' => genre1.id
})

album1.save()

album2 = Album.new({
  'title' => 'Z',
  'quantity' => 1,
  'cost_price' => 25,
  'artist_id' => artist4.id,
  'genre_id' => genre2.id
})

album2.save()

album3 = Album.new({
  'title' => 'Gold',
  'quantity' => 1,
  'cost_price' => 45,
  'artist_id' => artist2.id,
  'genre_id' => genre3.id
})

album3.save()

album4 = Album.new({
  'title' => 'The Courage of Others',
  'quantity' => 1,
  'cost_price' => 21,
  'artist_id' => artist3.id,
  'genre_id' => genre2.id
})

album4.save()

album5 = Album.new({
  'title' => 'Fear Fun',
  'quantity' => 1,
  'cost_price' => 19,
  'artist_id' => artist1.id,
  'genre_id' => genre2.id
})

album5.save()

binding.pry
nil










