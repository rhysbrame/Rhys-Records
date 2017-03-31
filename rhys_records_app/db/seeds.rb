require_relative('../models/artist')
require('pry')

artist1 = Artist.new({
  'name' => 'Father John Misty'
})

artist1.save()