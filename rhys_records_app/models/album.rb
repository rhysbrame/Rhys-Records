require_relative('../db/sql_runner')

class Album

  # attr_accessor :quantity 
  attr_reader :id, :title, :cost_price, :artist_id 

  def initialize(options)
    @id = nil || options['id'].to_i
    @title = options['title']
    @quantity = options['quantity'].to_i
    @cost_price = options['cost_price'].to_i
    @artist_id = options['artist_id'].to_i
  end

  def save()
    sql = "INSERT INTO albums ( title, quantity, cost_price, artist_id )
    VALUES ('#{@title}', #{@quantity}, #{@cost_price}, #{@artist_id} ) RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM albums"
    results = SqlRunner.run(sql)
    return results.map { |album_hash| Album.new(album_hash)}
  end
  
  def self.find(id)
    sql = "SELECT * FROM albums WHERE id = #{id}"
    result = SqlRunner.run(sql)
    return Album.new( result.first )
  end

  def self.delete_all()
    sql = "DELETE FROM albums"
    SqlRunner.run(sql)
  end

end