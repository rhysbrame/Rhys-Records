require_relative('../db/sql_runner')

class Album

  attr_accessor :quantity 
  attr_reader :id, :title, :cost_price, :artist_id, :genre_id 
  
  def initialize(options)
    @id = nil || options['id'].to_i
    @title = options['title']
    @quantity = options['quantity'].to_i
    @cost_price = options['cost_price'].to_i
    @artist_id = options['artist_id'].to_i
    @genre_id = options['genre_id'].to_i
  end

  def save()
    sql = "INSERT INTO albums ( title, quantity, cost_price, artist_id, genre_id )
    VALUES ('#{@title}', #{@quantity}, #{@cost_price}, #{@artist_id}, #{@genre_id} ) RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def delete()
    sql = "DELETE FROM albums WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  def artist()
    # sql = "SELECT * FROM artists a INNER JOIN albums b ON b.artist_id =a.id WHERE a.id = #{@artist_id}"
    sql = "SELECT * FROM artists WHERE id = #{@artist_id}"
    artist_hash = SqlRunner.run(sql).first
    return Artist.new(artist_hash)
  end

  def genre()
    # sql = "SELECT * FROM artists a INNER JOIN albums b ON b.artist_id = a.id INNER JOIN genres g ON b.genre_id = g.id WHERE b.id = #{@id}"
    sql = "SELECT * FROM genres WHERE id = #{@genre_id}"
    genre_hash = SqlRunner.run(sql).first
    return Genre.new(genre_hash)
  end

  def update()
    sql = "UPDATE albums SET (title, quantity, cost_price, artist_id, genre_id) = ('#{@title}', #{@quantity}, #{@cost_price}, #{@artist_id}, #{@genre_id}) WHERE id = #{@id}"
    SqlRunner.run(sql)
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









