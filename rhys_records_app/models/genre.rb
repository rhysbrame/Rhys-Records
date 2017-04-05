require_relative('../db/sql_runner')

class Genre

  attr_reader :id, :type

  def initialize(options)
    @id = nil || options['id'].to_i
    @type = options['type']
  end

  def save()
    sql = "INSERT INTO genres ( type )
    VALUES ('#{@type}') RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def delete()
    sql = "DELETE FROM genres WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE genres SET ( type ) = ('#{@type}') WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  def albums()
    sql = "SELECT * FROM genres g INNER JOIN albums b ON b.genre_id =g.id WHERE g.id = #{@id}"
    results = SqlRunner.run(sql)
    return results.map{ |album_by_genre_hash| Album.new(album_by_genre_hash) }
  end

  def artists()
    sql = "SELECT * FROM genres g INNER JOIN albums b ON b.genre_id =g.id INNER JOIN artists a ON b.artist_id = a.id WHERE g.id = #{@id}"
    results = SqlRunner.run(sql)
    return results.map{ |genre_artists_hash| Artist.new(genre_artists_hash) }
  end

  def self.all()
    sql = "SELECT * FROM genres"
    results = SqlRunner.run(sql)
    return results.map { |genre_hash| Genre.new(genre_hash)}
  end
  
  def self.find(id)
    sql = "SELECT * FROM genres WHERE id = #{id}"
    result = SqlRunner.run(sql)
    return Genre.new( result.first )
  end

  def self.delete_all()
    sql = "DELETE FROM genres"
    SqlRunner.run(sql)
  end

end