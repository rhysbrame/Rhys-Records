require_relative('../db/sql_runner')

class Artist

  attr_reader :id, :name

  def initialize(options)
    @id = nil || options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO artists ( name )
    VALUES ('#{@name}') RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def delete()
    sql = "DELETE FROM artists WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE artists SET ( name ) = ('#{@name}') WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  def albums()
    sql = "SELECT * FROM albums WHERE artist_id = #{id}"
    albums_hashes = SqlRunner.run(sql)
    return albums_hashes.map { |albums| Album.new(albums)}
  end

  def self.all()
    sql = "SELECT * FROM artists"
    results = SqlRunner.run(sql)
    return results.map { |artist_hash| Artist.new(artist_hash)}
  end
  
  def self.find(id)
    sql = "SELECT * FROM artists WHERE id = #{id}"
    result = SqlRunner.run(sql)
    return Artist.new( result.first )
  end

  def self.delete_all()
    sql = "DELETE FROM artists"
    SqlRunner.run(sql)
  end

end