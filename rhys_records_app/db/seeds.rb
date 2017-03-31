require_relative('../models/artist')
require('pry')

artist1 = Artist.new({
  'name' => 'Father John Misty'
})

artist1.save()

artist2 = Artist.new({
  'name' => 'Ryan Adams'
})

artist2.save()

