require_relative('../models/artist')
require('pry')

Artist.delete_all

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


binding.pry
nil