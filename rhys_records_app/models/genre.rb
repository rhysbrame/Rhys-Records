require_relative('../db/sql_runner')

class Genre

  attr_reader :id, :type

  def initialize(options)
    @id = options['id'].to_i
    @type = options['type']
  end

  def save()
    sql = "INSERT INTO genres ( type )
    VALUES ('#{@type}') RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
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