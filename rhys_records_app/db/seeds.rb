require_relative('../models/artist')
require_relative('../models/album')
require('pry')

Album.delete_all()
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

album1 = Album.new({
  'title' => 'Blonde on Blonde',
  'quantity' => 1,
  'cost_price' => 26,
  'artist_id' => artist5.id
})

album1.save()

binding.pry
nil